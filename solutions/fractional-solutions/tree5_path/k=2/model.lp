\ Model dominator-partition-fixed-k
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x5990aab40653d019
Minimize
 
Subject To
 Assign_1: x[1,1] + x[1,2] = 1
 Assign_2: x[2,1] + x[2,2] = 1
 Assign_3: x[3,1] + x[3,2] = 1
 Assign_4: x[4,1] + x[4,2] = 1
 Assign_5: x[5,1] + x[5,2] = 1
 NonEmptyBlock_1: x[1,1] + x[2,1] + x[3,1] + x[4,1] + x[5,1] >= 1
 NonEmptyBlock_2: x[1,2] + x[2,2] + x[3,2] + x[4,2] + x[5,2] >= 1
 Dominate_1_3_1: x[3,1] + d[1,1] <= 1
 Dominate_1_3_2: x[3,2] + d[1,2] <= 1
 Dominate_1_4_1: x[4,1] + d[1,1] <= 1
 Dominate_1_4_2: x[4,2] + d[1,2] <= 1
 Dominate_1_5_1: x[5,1] + d[1,1] <= 1
 Dominate_1_5_2: x[5,2] + d[1,2] <= 1
 Dominate_2_4_1: x[4,1] + d[2,1] <= 1
 Dominate_2_4_2: x[4,2] + d[2,2] <= 1
 Dominate_2_5_1: x[5,1] + d[2,1] <= 1
 Dominate_2_5_2: x[5,2] + d[2,2] <= 1
 Dominate_3_1_1: x[1,1] + d[3,1] <= 1
 Dominate_3_1_2: x[1,2] + d[3,2] <= 1
 Dominate_3_5_1: x[5,1] + d[3,1] <= 1
 Dominate_3_5_2: x[5,2] + d[3,2] <= 1
 Dominate_4_1_1: x[1,1] + d[4,1] <= 1
 Dominate_4_1_2: x[1,2] + d[4,2] <= 1
 Dominate_4_2_1: x[2,1] + d[4,1] <= 1
 Dominate_4_2_2: x[2,2] + d[4,2] <= 1
 Dominate_5_1_1: x[1,1] + d[5,1] <= 1
 Dominate_5_1_2: x[1,2] + d[5,2] <= 1
 Dominate_5_2_1: x[2,1] + d[5,1] <= 1
 Dominate_5_2_2: x[2,2] + d[5,2] <= 1
 Dominate_5_3_1: x[3,1] + d[5,1] <= 1
 Dominate_5_3_2: x[3,2] + d[5,2] <= 1
 DominateBlock_1: d[1,1] + d[1,2] = 1
 DominateBlock_2: d[2,1] + d[2,2] = 1
 DominateBlock_3: d[3,1] + d[3,2] = 1
 DominateBlock_4: d[4,1] + d[4,2] = 1
 DominateBlock_5: d[5,1] + d[5,2] = 1
 Order_1: x[1,1] - x[1,2] + x[2,1] - x[2,2] + x[3,1] - x[3,2] + x[4,1]
   - x[4,2] + x[5,1] - x[5,2] >= 0
Bounds
 x[1,1] <= 1
 x[1,2] <= 1
 x[2,1] <= 1
 x[2,2] <= 1
 x[3,1] <= 1
 x[3,2] <= 1
 x[4,1] <= 1
 x[4,2] <= 1
 x[5,1] <= 1
 x[5,2] <= 1
 d[1,1] <= 1
 d[1,2] <= 1
 d[2,1] <= 1
 d[2,2] <= 1
 d[3,1] <= 1
 d[3,2] <= 1
 d[4,1] <= 1
 d[4,2] <= 1
 d[5,1] <= 1
 d[5,2] <= 1
End
