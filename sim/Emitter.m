classdef Emitter
	properties
		pos(1, 3),
		normal(1, 3),
		amplitude,		%Just a scale factor
		phase
	end
	
	methods
		function obj = Emitter(posIn, normalIn, amplitudeIn,  phaseIn)
			obj.pos = posIn;
			obj.normal = normalIn;
			obj.amplitude = amplitudeIn;
			obj.phase = phaseIn;
		end
		
		function output = dist(obj, x, y, z)
			output = sqrt((x - obj.pos(1)).^2 + (y - obj.pos(2)).^2 + (z - obj.pos(3)).^2);
		end
		
		function output = dotProduct(obj, x, y, z)
			output = obj.normal(1) * (x - obj.pos(1)) + obj.normal(2) * (y - obj.pos(2)) + obj.normal(3) * (z - obj.pos(3));
		end
	end
end

