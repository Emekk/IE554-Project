from gurobipy import GRB
from sample_graphs import graphs, closed_neighborhoods, distance2_graph, all_maximal_independent_sets
import numpy as np
from model import create_and_solve_model, display_results
from draw_graph import draw_graph


# parameters
SEED = 0
GRAPH_NAME = "tree5_path"
SEARCH_FESAIBLE = False
V, E = graphs[GRAPH_NAME]
CN = closed_neighborhoods(V, E)
V, E2 = distance2_graph(V, E)  # Distance-2 graph
MAXIMAL_INDEPENDENT_SETS = all_maximal_independent_sets(V, E2)  # all maximal independent sets
K = 2
PI = {i for i in range(1, K+1)}  # Number of blocks (fixed)


is_integral = True
is_feasible = True
while is_integral: 
    # generate random weights for x[v, i] and d[v, i]
    SEED += 1
    np.random.seed(SEED)
    ALPHA = np.random.rand(len(V), len(PI)) * 2 - 1  # Random weights for x[v, i]
    BETA = np.random.rand(len(V), len(PI)) * 2 - 1  # Random weights for d[v, i]
    
    # create and solve model
    m, x, d = create_and_solve_model(
        V=V,
        E=E,
        CN=CN,
        MAXIMAL_INDEPENDENT_SETS=MAXIMAL_INDEPENDENT_SETS,
        K=K,
        PI=PI,
        ALPHA=ALPHA,
        BETA=BETA,
        SEARCH_FESAIBLE=SEARCH_FESAIBLE
    ).values()
    
    if m.status == GRB.INFEASIBLE:
        print(f">>> Model is infeasible with seed {SEED}.")
        break

    # check if the solution is integral
    is_integral = all(x[v, i].X.is_integer() and d[v, i].X.is_integer() for v in V for i in PI)

    if SEED % 1000 == 0:
        print(SEED)

if is_feasible and not is_integral:
    print(f">>> Found non-integral solution with seed {SEED}.")
    display_results(m, x, d, V, E, PI, SEARCH_FESAIBLE, save_path=f"solutions/{GRAPH_NAME}/k={K}/seed={SEED}.txt")
    draw_graph(V, E, save_path=f"solutions/{GRAPH_NAME}/graph.png")
