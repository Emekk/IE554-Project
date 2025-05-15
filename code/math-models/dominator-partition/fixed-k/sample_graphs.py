import numpy as np


# 6 vertices, tree
simple_tree_6 = np.array([
    [0, 1, 0, 0, 0, 0],
    [1, 0, 1, 0, 0, 0],
    [0, 1, 0, 1, 0, 0],
    [0, 0, 1, 0, 0, 1],
    [0, 0, 0, 0, 0, 1],
    [0, 0, 0, 1, 1, 0]
])

# 5 vertices, bipartite graph
bipartite_5 = np.array([
    [0, 0, 0, 1, 1],
    [0, 0, 0, 1, 0],
    [0, 0, 0, 0, 1],
    [1, 1, 0, 0, 0],
    [1, 0, 1, 0, 0],
])
