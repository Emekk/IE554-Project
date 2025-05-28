\ Model dominator-partition-fixed-k
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xbe3d1e4a93db8c11
Minimize
 
Subject To
 Assign_1: x[1,1] + x[1,2] = 1
 Assign_2: x[2,1] + x[2,2] = 1
 Assign_3: x[3,1] + x[3,2] = 1
 NonEmptyBlock_1: x[1,1] + x[2,1] + x[3,1] >= 1
 NonEmptyBlock_2: x[1,2] + x[2,2] + x[3,2] >= 1
 Dominate_2_3_1: x[3,1] + d[2,1] <= 1
 Dominate_2_3_2: x[3,2] + d[2,2] <= 1
 Dominate_3_2_1: x[2,1] + d[3,1] <= 1
 Dominate_3_2_2: x[2,2] + d[3,2] <= 1
 DominateBlock_1: d[1,1] + d[1,2] = 1
 DominateBlock_2: d[2,1] + d[2,2] = 1
 DominateBlock_3: d[3,1] + d[3,2] = 1
 Order_1: x[1,1] - x[1,2] + x[2,1] - x[2,2] + x[3,1] - x[3,2] >= 0
Bounds
 x[1,1] <= 1
 x[1,2] <= 1
 x[2,1] <= 1
 x[2,2] <= 1
 x[3,1] <= 1
 x[3,2] <= 1
 d[1,1] <= 1
 d[1,2] <= 1
 d[2,1] <= 1
 d[2,2] <= 1
 d[3,1] <= 1
 d[3,2] <= 1
End
