import gurobipy as gp
from gurobipy import GRB
import numpy as np


# Adjacency matrix (from your graph)
a_vu = np.array([
    [0, 1, 0, 0, 0, 0],
    [1, 0, 1, 0, 0, 0],
    [0, 1, 0, 1, 0, 0],
    [0, 0, 1, 0, 0, 1],
    [0, 0, 0, 0, 0, 1],
    [0, 0, 0, 1, 1, 0]
])

n = a_vu.shape[0]  # Number of vertices

# Model
m = gp.Model('dominator-partition-variable-k')

# Decision variables
x = m.addVars(n, n, vtype=GRB.BINARY, name="x")  # x[v, i]
y = m.addVars(n, vtype=GRB.BINARY, name="y")     # y[i]
d = m.addVars(n, n, vtype=GRB.BINARY, name="d")  # d[v, i]

# Objective: minimize number of blocks used
m.setObjective(gp.quicksum(y[i] for i in range(n)), GRB.MINIMIZE)

# Constraints

# Each vertex assigned to exactly one block
for v in range(n):
    m.addConstr(gp.quicksum(x[v, i] for i in range(n)) == 1, name=f"Assign_{v}")

# vertex assigned only if block used
for v in range(n):
    for i in range(n):
        m.addConstr(x[v, i] <= y[i], name=f"UseBlock_{v}_{i}")

# block used only if at least one vertex assigned
for i in range(n):
    m.addConstr(gp.quicksum(x[v, i] for v in range(n)) >= y[i], name=f"BlockUsed_{i}")

# Domination condition
for v in range(n):
    for u in range(n):
        for i in range(n):
            m.addConstr(x[u, i] <= a_vu[v, u] + (1 - d[v, i]), name=f"Dominate_{v}_{u}_{i}")

# Each vertex dominates at least one block
for v in range(n):
    m.addConstr(gp.quicksum(d[v, i] for i in range(n)) >= 1, name=f"DominateBlock_{v}")

# Cannot dominate an empty block
for v in range(n):
    for i in range(n):
        m.addConstr(d[v, i] <= y[i], name=f"DominateEmptyBlock_{v}_{i}")

# Optimize
m.optimize()

# Display solution
if m.status == GRB.OPTIMAL:
    # print decision variables
    for v in range(n):
        for i in range(n):
            if x[v, i].X > 0.5:
                print(f"x[{v}, {i}] = {x[v, i].X}")
    for i in range(n):
        if y[i].X > 0.5:
            print(f"y[{i}] = {y[i].X}")
    for v in range(n):
        for i in range(n):
            if d[v, i].X > 0.5:
                print(f"d[{v}, {i}] = {d[v, i].X}")
else:
    print("No optimal solution found.")
