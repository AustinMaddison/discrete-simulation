import numpy as np
from matplotlib import pyplot as plt
from joblib import Memory

cachedir = 'cache/'
memory = Memory(cachedir, verbose=0)

# use using @memory.cache to cache the result of a function

plt.rcParams['text.usetex'] = True
plt.rcParams['text.latex.preamble'] = (r'\usepackage{amsmath}'
                                       r'\usepackage{arev}'
                                       r'\usepackage[T1]{fontenc}'
                                       r'\normalfont')