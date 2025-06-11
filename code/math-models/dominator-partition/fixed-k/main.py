from gurobipy import GRB
from sample_graphs import graphs, closed_neighborhoods
import numpy as np
from model import create_and_solve_model, display_results
from draw_graph import draw_graph


# parameters
GRAPH_NAME = "tree6_path"
SEARCH_FESAIBLE = False
V, E = graphs[GRAPH_NAME]
CN = closed_neighborhoods(V, E)
K = 4
PI = {i for i in range(1, K+1)}  # Number of blocks (fixed)

is_integral = True
is_feasible = True
seed = 0
while is_integral: 
    # generate random weights for x[v, i] and d[v, i]
    seed += 1
    np.random.seed(seed)
    ALPHA = np.random.rand(len(V), len(PI)) * 2 - 1  # Random weights for x[v, i]
    BETA = np.random.rand(len(V), len(PI)) * 2 - 1  # Random weights for d[v, i]
    
    # create and solve model
    m, x, d = create_and_solve_model(V, E, CN, K, PI, ALPHA, BETA, SEARCH_FESAIBLE).values()
    
    if m.status == GRB.INFEASIBLE:
        print(f">>> Model is infeasible with seed {seed}.")
        break

    # check if the solution is integral
    is_integral = all(x[v, i].X.is_integer() and d[v, i].X.is_integer() for v in V for i in PI)

    if seed % 1000 == 0:
        print(seed)

if is_feasible and not is_integral:
    print(f">>> Found non-integral solution with seed {seed}.")
    display_results(m, x, d, V, E, PI, SEARCH_FESAIBLE, save_path=f"solutions/{GRAPH_NAME}/k={K}/seed={seed}.txt")
draw_graph(V, E, save_path=f"solutions/{GRAPH_NAME}/graph.png")
