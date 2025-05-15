import gurobipy as gp
from gurobipy import GRB
import numpy as np
import os
from sample_graphs import bipartite_5


# Adjacency matrix (from your graph)
a_vu = bipartite_5

n = a_vu.shape[0]  # Number of vertices
k = 4  # Number of blocks (fixed)

# Model
m = gp.Model('dominator-partition-fixed-k')

# Decision variables
x = m.addVars(n, k, vtype=GRB.BINARY, name="x")  # x[v, i]
d = m.addVars(n, k, vtype=GRB.BINARY, name="d")  # d[v, i]

# Objective: minimize number of blocks used
m.setObjective(0, GRB.MINIMIZE)

# Constraints

# Each vertex assigned to exactly one block
for v in range(n):
    m.addConstr(gp.quicksum(x[v, i] for i in range(k)) == 1, name=f"Assign_{v}")

# no empty blocks
for i in range(k):
    m.addConstr(gp.quicksum(x[v, i] for v in range(n)) >= 1, name=f"NonEmptyBlock_{i}")

# domination condition
for v in range(n):
    for u in range(n):
        for i in range(k):
            m.addConstr(x[u, i] <= a_vu[v, u] + (1 - d[v, i]), name=f"Dominate_{v}_{u}_{i}")

# each vertex dominates at least one block
for v in range(n):
    m.addConstr(gp.quicksum(d[v, i] for i in range(k)) >= 1, name=f"DominateBlock_{v}")

# blocks are used in order
for i in range(k - 1):
    m.addConstr(gp.quicksum(x[v, i] for v in range(n)) >= gp.quicksum(x[v, i + 1] for v in range(n)), name=f"Order_{i}")

# optimize
m.optimize()

# display solution
script_dir = os.path.dirname(os.path.abspath(__file__))
with open(f"{script_dir}/solution.txt", "w", encoding="utf-8") as f:
    if m.status == GRB.OPTIMAL:
        # print decision variables
        for i in range(k):
            for v in range(n):
                if x[v, i].X > 0.5:
                    print(f"x[{v}, {i}] = {x[v, i].X}", file=f)
        print("---", file=f)
        for v in range(n):
            for i in range(k):
                if d[v, i].X > 0.5:
                    print(f"d[{v}, {i}] = {d[v, i].X}", file=f)
    else:
        print("No optimal solution found.", file=f)
