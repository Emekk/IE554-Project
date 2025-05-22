import gurobipy as gp
from gurobipy import GRB
import numpy as np
import os
from sample_graphs import tree4_star
from draw_graph import draw_graph


# parameters
V, E = tree4_star
K = 4
PI = {i for i in range(1, K+1)}  # Number of blocks (fixed)

# model
m = gp.Model('dominator-partition-fixed-k')

# decision variables
x = m.addVars(V, PI, vtype=GRB.CONTINUOUS, lb=0, ub=1, name="x")  # x[v, i]
d = m.addVars(V, PI, vtype=GRB.CONTINUOUS, lb=0, ub=1, name="d")  # d[v, i]

# objective: minimize number of blocks used
m.setObjective(0, GRB.MINIMIZE)

# each vertex assigned to exactly one block
for v in V:
    m.addConstr(gp.quicksum(x[v, i] for i in PI) == 1, name=f"Assign_{v}")

# no empty blocks
for i in PI:
    m.addConstr(gp.quicksum(x[v, i] for v in V) >= 1, name=f"NonEmptyBlock_{i}")

# domination condition
for v in V:
    for u in V:
        if {v, u} not in E:
            for i in PI:
                m.addConstr(x[u, i] + d[v, i] <= 1, name=f"Dominate_{v}_{u}_{i}")

# each vertex dominates at least one block
for v in V:
    m.addConstr(gp.quicksum(d[v, i] for i in PI) >= 1, name=f"DominateBlock_{v}")

# blocks are used in order
for i in PI.difference({K}):
    m.addConstr(gp.quicksum(x[v, i] for v in V) >= gp.quicksum(x[v, i + 1] for v in V), name=f"Order_{i}")

# run the model
m.optimize()

# display solution
script_dir = os.path.dirname(os.path.abspath(__file__))
partitions = []
with open(f"{script_dir}/solution.txt", "w", encoding="utf-8") as f:
    if m.status == GRB.OPTIMAL:
        # print decision variables
        for i in PI:
            partition = []
            for v in V:
                if x[v, i].X > 0:
                    print(f"x[{v}, {i}] = {x[v, i].X}", file=f)
                    partition.append(v)
            partitions.append(partition)
        print("---", file=f)
        for v in V:
            for i in PI:
                if d[v, i].X > 0:
                    print(f"d[{v}, {i}] = {d[v, i].X}", file=f)
    else:
        print("No optimal solution found.", file=f)
draw_graph(V, E, seed=0)
