import re
from operator import itemgetter

with open("fpga_board.net","r") as f:
    lines = f.readlines()

pairs = []
group = []
for line in lines:
    m = re.search(r"name \/(T[0-9]*[-,+][0-9])",line)
    n = re.search(r"\(ref U1\) \(pin ([A-Z][0-9]*)\)",line)
    if m:
        if len(group) == 1:
            print("failed to find coupled pin on "+group[0])
        group = [m.group(1)]
    if n and len(group) == 1:
        group.append(n.group(1))
        pairs.append(group)
        group = []

pairs = sorted(pairs,key=itemgetter(0))

transducersp = [[],[],[],[],[]]
transducersn = [[],[],[],[],[]]
for each in pairs:
    m = re.findall(r"T([0-9]*)([+-])([1-5])", each[0])[0]
    if(m[1] == "+"):
        transducersp[int(m[2])-1].append([int(m[0]),each[1]])
    elif(m[1] == "-"):
        transducersn[int(m[2])-1].append([int(m[0]),each[1]])
    else:
        print("error " + each)

for i in range(5):
    p = sorted(transducersp[i],key=itemgetter(0))
    n = sorted(transducersn[i],key=itemgetter(0))
    for each in p:
        print("NET tp"+str(i+1)+"["+str(each[0]-1)+"]\t LOC= \"" + str(each[1])+"\"\t | IOSTANDARD=LVCMOS33;")
    for each in n:
        print("NET tn"+str(i+1)+"["+str(each[0]-1)+"]\t LOC= \"" + str(each[1])+"\"\t | IOSTANDARD=LVCMOS33;")

