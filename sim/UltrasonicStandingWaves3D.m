%close all
clear
clc

global lambda f emitterRadius omega k gridLength K1 K2 spacingX spacingY spacingZ levitationPos emitters radiusParticle volumeParticle densityParticle

speedAir = 343.2;		%m/s. 20 degrees Celsius
f = 40e3;		%Hz
lambda = speedAir / f;		%meters
emitterRadius = 0.0065;		%meters
omega = 2*pi*f;
k = 2*pi/lambda;	%Wavenumber

gridLength = 200;		%Number of points in each dimension of the simulation grid
lowerCorner = [-.04, -.04, -.04];       %Top left; [x, y, z]. Automatically centered around levitation point
upperCorner = [.04, .04, .04];         %Bottom right

%Gor'kov parameters
speedParticle = speedAir * 1.8;     %I think this is a reasonably good estimate for polystyrene
radiusParticle = lambda / 4;
volumeParticle = 4 * pi / 3 * radiusParticle^3;
densityAir = 1.204;         %kg/m^3
densityParticle = 1050;
K1 = volumeParticle / 4 * (1/(speedAir^2 * densityAir) - 1/(speedParticle^2 * densityParticle));
K2 = 3 * volumeParticle / 4 * (densityAir - densityParticle) / (omega^2 * densityAir * (densityAir + 2 * densityParticle));

spacingX = (upperCorner(1) - lowerCorner(1)) / (gridLength - 1);
spacingY = (upperCorner(2) - lowerCorner(2)) / (gridLength - 1);
spacingZ = (upperCorner(3) - lowerCorner(3)) / (gridLength - 1);

levitationPos = [0, 0, 0];
emitters = createEmitterPlane(7, 7, .02, -.4, true);
%emitters = createSingleEmitter(0, false);
emitters = createStandingWave(emitters, levitationPos);
%emitters = createOptimizerTrap(emitters, levitationPos, 1, 1, 1);
%emitters = createVortexHolographic(emitters, levitationPos);

%On emitter amplitude - the value given in the datasheet equates to 20 Pascals. I do not know at how far away this was measured, but if it is the same as the 400ST160, then it was at 30 cm.

printLevitationStats();
lowerCorner = lowerCorner + levitationPos;
upperCorner = upperCorner + levitationPos;
[x,y,z] = meshgrid(linspace(lowerCorner(1), upperCorner(1), gridLength), linspace(lowerCorner(2), upperCorner(2), gridLength), linspace(lowerCorner(3), upperCorner(3), gridLength));
x = gpuArray(x);
y = gpuArray(y);
z = gpuArray(z);
fieldPhasors = gpuArray(complex(zeros(gridLength, gridLength, gridLength)));
fieldDx = fieldPhasors;
fieldDy = fieldPhasors;
fieldDz = fieldPhasors;
for i = 1:size(emitters, 1)
	fieldPhasors = fieldPhasors + calcFieldPhasor(emitters(i, :), x, y, z);
	fieldDx = fieldDx + calcFieldDerivative(emitters(i, :), x, y, z, 1);
	fieldDy = fieldDy + calcFieldDerivative(emitters(i, :), x, y, z, 2);
	fieldDz = fieldDz + calcFieldDerivative(emitters(i, :), x, y, z, 3);
end
fieldMagnitude = abs(fieldPhasors);
initialField = real(fieldPhasors);

%The "Holographic Acoustic Elements" paper says to do "- K2" instead of "+ K2". I accidentally did "+ K2" at first and it seems better - the pressure magnitude minimums line up with the Gor'kov minimums.
%I think that paper switched a sign, and this was supported by another paper I found (Acoustic Potential Generation under Acoustic Standing Waves Modeling using CFD Software. by Iorio and Perfetti),
%although I can't say for sure because I couldn't make everything match up exactly between the two variants of the Gor'kov potential equation. This would explain the first paper's weird assertion that the Gor'kov potential alone is wrong and the pressure magnitude also needs to be minimized in the objective function.
gorkov = K1 * fieldMagnitude.^2 + K2 * (abs(fieldDx).^2 + abs(fieldDy).^2 + abs(fieldDz).^2);
gorkovLaplacian = 4*del2(gorkov, spacingX, spacingY, spacingZ);     %Apparently del2 returns the Laplacian divided by 4. This result seems to scale depending on resolution but I'm not sure it matters.

[forceX, forceY, forceZ] = gradient(gorkov, spacingX, spacingY, spacingZ);
[laplacianX, ~, ~] = gradient(forceX, spacingX, spacingY, spacingZ);
[~, laplacianY, ~] = gradient(forceY, spacingX, spacingY, spacingZ);
[~, ~, laplacianZ] = gradient(forceZ, spacingX, spacingY, spacingZ);
forceX = -forceX;
forceY = -forceY;
forceZ = -forceZ;



tiledlayout("flow");

plotField("Pressure Magnitude", fieldMagnitude, levitationPos, [], x, y, z);
addEmitterPoints();
plotField("Gor'kov Potential", gorkov, levitationPos, [], x, y, z);
plotField("Laplacian of Gor'kov", gorkovLaplacian, levitationPos, [], x, y, z);
plotField("Force in X", forceX, levitationPos, [], x, y, z);
plotField("Force in Y", forceY, levitationPos, [], x, y, z);
plotField("Force in Z", forceZ, levitationPos, [], x, y, z);
plotField("Laplacian X Component", laplacianX, levitationPos, [], x, y, z);
plotField("Laplacian Y Component", laplacianY, levitationPos, [], x, y, z);
plotField("Laplacian Z Component", laplacianZ, levitationPos, [], x, y, z);

%isosurface(x, y, z, fieldMagnitude, .5)


function fieldPhasor = calcFieldPhasor(emitter, x, y, z)
	global k
    dist = emitter.dist(x, y, z);
	amplitude = calcEmitterMagnitude(emitter, x, y, z);
    fieldPhasor = makeComplex(amplitude, -k * dist + emitter.phase);
end

%Pass 1, 2, or 3 to dim for the derivative wrt x, y, or z respectively
function fieldDerivativePhasor = calcFieldDerivative(emitter, x, y, z, dim)
	global k emitterRadius
    dist = emitter.dist(x, y, z);
	dotProduct = emitter.dotProduct(x, y, z);
	sinTheta = sqrt(1 - (dotProduct ./ dist).^2);
    if dim == 1
        dimValues = x;
    elseif dim == 2
        dimValues = y;
    elseif dim == 3
        dimValues = z;
    end
    dSinTheta = 1 ./ (2 * sinTheta) .* (-2 * dotProduct) .* (emitter.normal(dim) .* dist - dotProduct .* (dimValues - emitter.pos(dim)) ./ dist) ./ (dist.^3);
	dSinTheta(isnan(dSinTheta)) = 0;		%Replace all nan's with 0. As theta approaches 0 from the right, dSinTheta is a finite positive number, and from the left, it is the negative of that number. It is undefined at theta = 0, but I think 0 is  a reasonable value for it. As long as it is not infinite, it doesn't really matter, because it gets multiplied by zero anyways because of the bessel function.
	dSinTheta(isinf(dSinTheta)) = 0;		%nan happens when Inf is multiplied by zero; if this doesn't happen, then inf is returned
    fieldDerivativePhasor = emitter.amplitude .* exp(1i * (-k * dist + emitter.phase)) .* (-k * emitterRadius * dSinTheta .* besselj(1, k * emitterRadius * sinTheta) ./ dist + besselj(0, k * emitterRadius * sinTheta) .* ((emitter.pos(dim) - dimValues) ./ (dist.^3) + (-1i * k * (dimValues - emitter.pos(dim)) ./ (dist.^2))));
end

%Implemented to see if it makes optimizers faster. Not fully tested
function fieldDerivativePhasor = calcFieldDerivativeNumerical(emitter, x, y, z, dim)
	h = .000001;
	if dim == 1
		diff = calcFieldPhasor(emitter, x + h, y, z) - calcFieldPhasor(emitter, x - h, y, z);
	elseif dim == 2
		diff = calcFieldPhasor(emitter, x, y + h, z) - calcFieldPhasor(emitter, x, y - h, z);
	elseif dim == 3
		diff = calcFieldPhasor(emitter, x, y, z + h) - calcFieldPhasor(emitter, x, y, z - h);
	end
	fieldDerivativePhasor = diff / (h*2);
end

%Calculate the Gor'kov potential directly.
function gorkov = calcGorkov(emitters, x, y, z)
	global K1 K2
	field = zeros(size(x));
	fielddx = field;
	fielddy = field;
	fielddz = field;
	for i = 1:size(emitters, 1)
		field = field + calcFieldPhasor(emitters(i), x, y, z);
		fielddx = fielddx + calcFieldDerivative(emitters(i), x, y, z, 1);
		fielddy = fielddy + calcFieldDerivative(emitters(i), x, y, z, 2);
		fielddz = fielddz + calcFieldDerivative(emitters(i), x, y, z, 3);
	end
	gorkov = K1 * abs(field).^2 + K2 * (abs(fielddx).^2 + abs(fielddy).^2 + abs(fielddz).^2);
end

function [laplacian, Uxx, Uyy, Uzz] = calcLaplacian(emitters, x, y, z)
	h = .000001;
	centralValue = calcGorkov(emitters, x, y, z);
	Uxx = (calcGorkov(emitters, x + h, y, z) - 2*centralValue + calcGorkov(emitters, x - h, y, z)) / (h^2);
	Uyy = (calcGorkov(emitters, x, y + h, z) - 2*centralValue + calcGorkov(emitters, x, y - h, z)) / (h^2);
	Uzz = (calcGorkov(emitters, x, y, z + h) - 2*centralValue + calcGorkov(emitters, x, y, z - h)) / (h^2);
	laplacian = Uxx + Uyy + Uzz;
end

function output = calcObjective(emitters, x, y, z, wx, wy, wz)
	[~, Uxx, Uyy, Uzz] = calcLaplacian(emitters, x, y, z);
	output = -wx * Uxx + -wy * Uyy + -wz * Uzz;
end

function emitters = createEmitterPlane(xCount, yCount, spacing, zPos, makeOpposing)
    emitters = [];
    for px = linspace(-spacing * xCount / 2, spacing * xCount / 2, xCount)
        for py = linspace(-spacing * yCount / 2, spacing * yCount / 2, yCount)
            emitters = [emitters; Emitter([px, py, zPos], [0, 0, 1], 1, 0)];
            if makeOpposing
                emitters = [emitters; Emitter([px, py, -zPos], [0, 0, -1], 1, 0)];
            end
        end
    end
end

function emitters = createSingleEmitter(zPos, makeOpposing)
    emitters = Emitter([0, 0, zPos], [0, 0, 1], 1, 0);
    if makeOpposing
        emitters = [emitters; Emitter([0, 0, -zPos], [0, 0, -1], 1, 0)];
    end
end

function emitters = createEmitterRing(count, radius, zPos, makeOpposing)
    angles = linspace(0, 2*pi, count + 1);
    angles = angles(1:end-1);
    [emitterX, emitterY] = pol2cart(angles, radius);
    emitters = [];
    for i = 1:size(angles, 2)
        emitters = [emitters; Emitter([emitterX(i), emitterY(i), zPos], [0, 0, 1], 1, 0)];	%Normals currently incorrect
        if makeOpposing
            emitters = [emitters; Emitter([emitterX(i), emitterY(i), -zPos], [0, 0, -1], 1, 0)];
        end
    end
end

%Requires an even number of emitters. Assumes all amplitudes are the same
function emitters = createStandingWave(emitters, levitationPos)
	emitters = focusToPoint(emitters, levitationPos);
    for i = 1:size(emitters, 1)
		if(emitters(i).pos(3) > 0)
			emitters(i).phase = emitters(i).phase - pi;
		end
    end
end

%Assumes emitters are in a ring. Assumes single-sided. Creates a levitation point in the center of the ring.
function emitters = createBessel(emitters, levitationPos)
	global k
    for i = 1:size(emitters, 1)
        emitter = emitters(i, :);
        dist = sqrt((emitter(1) - levitationPos(1)).^2 + (emitter(2) - levitationPos(2)).^2 + (emitter(3) - levitationPos(3)).^2);
        emitters(i, 5) = wrapTo2Pi(2*pi / size(emitters, 1) * (i - 1) - k * dist);
    end
end

function emitters = createOptimizerTrap(emitters, levitationPos, wx, wy, wz)
	tic
	emitters(4).phase = 2;		%temp
	%parpool
	objectiveFunc = @(phases) calcObjective(usePhases(emitters, phases'), levitationPos(1), levitationPos(2), levitationPos(3), wx, wy, wz);
	initialPhases = zeros([1, numel(emitters)]);
	lower = zeros([1, numel(emitters)]);
	upper = ones([1, numel(emitters)]) * 2*pi;
	
	problem = createOptimProblem("fmincon", "objective", objectiveFunc, "x0", initialPhases, "lb", lower, "ub", upper);
	gs = GlobalSearch;		%Runs fmincon a bunch
	%optimizedPhases = run(gs, problem);			%Constraining one of the phases does not seem to do anything. I would think it would be more efficient by being one less variable to solve for and not causing there to be infinite solutions, but it seems to be the same or worse.
	
	%[optimizedPhases, fval] = fminunc(objectiveFunc, rand(1, size(emitters, 1)) * 2*pi);
	gaOptions = optimoptions('ga', 'UseParallel', false);		%Using parallel causes an error
	optimizedPhases = ga(objectiveFunc, size(emitters, 1), [], [], [], [], 0, 2*pi, [], gaOptions);
	emitters = usePhases(emitters, optimizedPhases');
	toc
end

%Assumes single-sided and no emitters at x = 0
function emitters = createTwinHolographic(emitters, levitationPos)
	emitters = focusToPoint(emitters, levitationPos);
	for i = 1:size(emitters, 1)
		if(emitters(i).pos(1) < 0)
			emitters(i).phase = emitters(i).phase + pi;
		end
	end
end

%Assumes single-sided
function emitters = createVortexHolographic(emitters, levitationPos)
	emitters = focusToPoint(emitters, levitationPos);
	for i = 1:size(emitters, 1)
		emitters(i).phase = emitters(i).phase + atan2(emitters(i).pos(2), emitters(i).pos(1));		%An emitter at x=0, y=0 might throw things off a bit
	end
end

%Assumes single-sided and square plane. This one won't match the paper's hologram as well as the others
function emitters = createBottleHolographic(emitters, levitationPos)
	emitters = focusToPoint(emitters, levitationPos);
	emittersXYZ = cat(1, emitters.pos);
	distXY = sqrt(emittersXYZ(:, 1).^2 + emittersXYZ(:, 2).^2);
	[~, indices] = sort(distXY, 'descend');		%Split the emitters into two groups by distance from center and only phase shift the farther ones
	%emittersSorted = emitters(indices, :);
	indices = indices(1:size(indices)/2);
	for i = indices'
		emitters(i).phase = emitters(i).phase + pi;
	end
end

function emitters = focusToPoint(emitters, levitationPos)
	global k
	for i = 1:size(emitters, 1)
        emitter = emitters(i);
        dist = sqrt((emitter.pos(1) - levitationPos(1)).^2 + (emitter.pos(2) - levitationPos(2)).^2 + (emitter.pos(3) - levitationPos(3)).^2);
        emitters(i).phase = wrapTo2Pi(k * dist);
    end
end

function emitters = quantizePhases(emitters, steps)
	step = 2*pi / steps;
	for i = 1:size(emitters)
		emitters(i).phase = step * round(wrapTo2Pi(emitters(i).phase) / step);
	end
end

%Can be negative sometimes due to the bessel function
function magnitude = calcEmitterMagnitude(emitter, x, y, z)
	global k emitterRadius
	dist = emitter.dist(x, y, z);
	dotProduct = emitter.dotProduct(x, y, z);
	sinTheta = sqrt(1 - (dotProduct ./ dist).^2);
	magnitude = emitter.amplitude * besselj(0, k * emitterRadius * sinTheta) ./ dist;
end

function plotField(titleIn, fieldIn, centerPoint, caxisArgs, x, y, z)
	nexttile;		%Using this instead of subplot causes the plots to constantly resize themselves when one is rotated. I didn't see any easy solutions
	h = slice(x, y, z, fieldIn, centerPoint(1), centerPoint(2), centerPoint(3));
	set(h, 'edgecolor', 'none')
	colorbar
	if(~isempty(caxisArgs))
		caxis(caxisArgs);
	end
	title(titleIn);
	xlabel("x");
	ylabel("y");
	%axis vis3d
end

%Colors correspond to phase at the levitation point
function addEmitterPoints()
	global emitters levitationPos
	hold on
	emittersBase = focusToPoint(emitters, levitationPos);
	emittersXYZ = cat(1, emitters.pos);		%I am not aware of a better way to do this
	scatter3(emittersXYZ(:, 1), emittersXYZ(:, 2), emittersXYZ(:, 3), [], interp1(hsv, wrapTo2Pi([emitters.phase]' - [emittersBase.phase]')*256/(2*pi)+1, 'linear', 'extrap'), 'filled');
	hold off
end

function printLevitationStats()
	global emitters levitationPos volumeParticle densityParticle
	levPressure = 0 + 0i;
	for i = 1:size(emitters)
		levPressure = levPressure + calcFieldPhasor(emitters(i), levitationPos(1), levitationPos(2), levitationPos(3));
	end
	fprintf("Pressure magnitude: %f Pa\n", abs(levPressure));
	fprintf("Gor'kov potential: %e\n", calcGorkov(emitters, levitationPos(1), levitationPos(2), levitationPos(3)));
	[laplacian, Uxx, Uyy, Uzz] = calcLaplacian(emitters, levitationPos(1), levitationPos(2), levitationPos(3));
	fprintf("Laplacian: %e (x: %e, y: %e, z: %e)\n", laplacian, Uxx, Uyy, Uzz);
	fprintf("Force of gravity on sphere: %f N\n", 9.81 * volumeParticle * densityParticle);
end

%Returns emitter array with phases replaced. Phases should be a column vector. Phases can have fewer elements than emitters
function emitters = usePhases(emitters, phases)
	for i = 1:size(phases, 1)
		emitters(i).phase = phases(i);
	end
end

function output = makeComplex(magnitude, phase)
    [re, im] = pol2cart(phase, magnitude);
    output = re + 1i*im;
end