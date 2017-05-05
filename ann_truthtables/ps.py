import numpy, copy

NA = 4
MEMW = 16

nettext = """"""

data = numpy.array([[[float(w) for w in n.replace("[", "").replace("]", "").split(",")[:-1]] for n in l.split("],\n")[:-1]] for l in nettext.split("],\n\n")[:-1]])

fs = [lambda x, y: x and y,
      lambda x, y: x or y,
      lambda x, y: not (x and y),
      lambda x, y: not (x or y),
      lambda x, y: x ^ y,
      lambda x, y: not (x ^ y)
      ]


class Network:
    
    def __init__(self, nn):
        self.nn = nn
        self.mem = numpy.zeros((MEMW), float)

        self.stf = [random.choice(fs) for i in range(4)]
        self.states = [False, False, False, False]
        self.prevact = numpy.zeros(nn.shape[:-1], float)
        
    
    def propagate(self, a):
        for l in range(data.shape[0]):
            a = (data[l, :, :-2]*a).sum(axis=1)+data[l, :, -1]
            self.prevact[l] = copy.copy(a)
        

        return a

    def iterate(self, a):
        out = self.propagate
