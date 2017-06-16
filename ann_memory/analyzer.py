# -*- coding: utf-8 -*-
import subprocess, numpy, os, pickle, sys


def load_file(filename):
    netstrs = subprocess.check_output(["./genepool_dump", filename, "16"]).split("###")[:-1]

    nets = []
    for n in netstrs:
        exec("net = "+n)
        net = numpy.array(net)
        nets.append(net)

    
    return numpy.array(nets).sum(axis=0)/16

def listfiles():
    return os.listdir("lognn")


try:
    neth = pickle.load(open("neth.pynnh"))

except:
    neth = []
    fs = listfiles()
    for f in fs:
        print "Loading file %d/%d" % (fs.index(f)+1, len(fs)) 
        n = load_file("lognn/"+f)
        neth.append(n)

    pickle.dump(neth, open("neth.pynnh", "w"))
    

neth = numpy.array(neth)

for i in range(neth.shape[0]):
    sys.stdout.write("%f\t" % numpy.linalg.norm(neth[i+1]-neth[i]))
    print numpy.linalg.norm((neth[i+3].sum(axis=0)-neth[i+2].sum(axis=0))-(neth[i+1].sum(axis=0)-neth[i+0].sum(axis=0)))
