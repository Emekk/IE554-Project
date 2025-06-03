# Closed neighborhoods function
def closed_neighborhoods(V, E):
    neighborhoods = {v: set() for v in V}
    for u, v in E:
        neighborhoods[u].add(v)
        neighborhoods[v].add(u)
    for v in V:
        neighborhoods[v].add(v)  # Add self to closed neighborhood

    return neighborhoods

# SAMPLE GRAPHS
tree3 = (
    {1, 2, 3},
    {
        frozenset({1, 2}),
        frozenset({1, 3}),
    },
)
tree4_path = (
    {1, 2, 3, 4},
    {
        frozenset({1, 2}),
        frozenset({2, 3}),
        frozenset({3, 4}),
    },
)
tree4_star = (
    {1, 2, 3, 4},
    {
        frozenset({1, 2}),
        frozenset({1, 3}),
        frozenset({1, 4}),
    },
)
tree5_path = (
    {1, 2, 3, 4, 5},
    {
        frozenset({1, 2}),
        frozenset({2, 3}),
        frozenset({3, 4}),
        frozenset({4, 5}),
    },
)
tree5_star = (
    {1, 2, 3, 4, 5},
    {
        frozenset({1, 2}),
        frozenset({1, 3}),
        frozenset({1, 4}),
        frozenset({1, 5}),
    },
)
tree5_fork = (
    {1, 2, 3, 4, 5},
    {
        frozenset({1, 2}),
        frozenset({2, 3}),
        frozenset({3, 4}),
        frozenset({3, 5}),
    },
)
tree6_star = (
    {1, 2, 3, 4, 5, 6},
    {
        frozenset({1, 2}),
        frozenset({1, 3}),
        frozenset({1, 4}),
        frozenset({1, 5}),
        frozenset({1, 6}),
    },
)
tree6_path = (
    {1, 2, 3, 4, 5, 6},
    {
        frozenset({1, 2}),
        frozenset({2, 3}),
        frozenset({3, 4}),
        frozenset({4, 5}),
        frozenset({5, 6}),
    },
)
tree6_fork = (
    {1, 2, 3, 4, 5, 6},
    {
        frozenset({1, 2}),
        frozenset({2, 3}),
        frozenset({3, 4}),
        frozenset({3, 5}),
        frozenset({3, 6}),
    },
)
tree6_doublefork = (
    {1, 2, 3, 4, 5, 6},
    {
        frozenset({1, 3}),
        frozenset({2, 3}),
        frozenset({3, 4}),
        frozenset({4, 5}),
        frozenset({4, 6}),
    },
)
tree6_lollipop = (
    {1, 2, 3, 4, 5, 6},
    {
        frozenset({1, 2}),
        frozenset({2, 3}),
        frozenset({3, 4}),
        frozenset({2, 5}),
        frozenset({2, 6}),
    },
)
tree6_threebranch = (
    {1, 2, 3, 4, 5, 6},
    {
        frozenset({1, 2}),
        frozenset({2, 3}),
        frozenset({3, 4}),
        frozenset({3, 5}),
        frozenset({5, 6}),
    },
)

graphs = {
    "tree3_path": tree3,
    "tree4_path": tree4_path,
    "tree4_star": tree4_star,
    "tree5_path": tree5_path,
    "tree5_star": tree5_star,
    "tree5_fork": tree5_fork,
    "tree6_star": tree6_star,
    "tree6_path": tree6_path,
    "tree6_fork": tree6_fork,
    "tree6_doublefork": tree6_doublefork,
    "tree6_lollipop": tree6_lollipop,
    "tree6_threebranch": tree6_threebranch,
}
