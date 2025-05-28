\ Model dominator-partition-fixed-k
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x50a2170d827d074a
Minimize
 
Subject To
 Assign_1: x[1,1] + x[1,2] + x[1,3] + x[1,4] = 1
 Assign_2: x[2,1] + x[2,2] + x[2,3] + x[2,4] = 1
 Assign_3: x[3,1] + x[3,2] + x[3,3] + x[3,4] = 1
 Assign_4: x[4,1] + x[4,2] + x[4,3] + x[4,4] = 1
 Assign_5: x[5,1] + x[5,2] + x[5,3] + x[5,4] = 1
 NonEmptyBlock_1: x[1,1] + x[2,1] + x[3,1] + x[4,1] + x[5,1] >= 1
 NonEmptyBlock_2: x[1,2] + x[2,2] + x[3,2] + x[4,2] + x[5,2] >= 1
 NonEmptyBlock_3: x[1,3] + x[2,3] + x[3,3] + x[4,3] + x[5,3] >= 1
 NonEmptyBlock_4: x[1,4] + x[2,4] + x[3,4] + x[4,4] + x[5,4] >= 1
 Dominate_1_3_1: x[3,1] + d[1,1] <= 1
 Dominate_1_3_2: x[3,2] + d[1,2] <= 1
 Dominate_1_3_3: x[3,3] + d[1,3] <= 1
 Dominate_1_3_4: x[3,4] + d[1,4] <= 1
 Dominate_1_4_1: x[4,1] + d[1,1] <= 1
 Dominate_1_4_2: x[4,2] + d[1,2] <= 1
 Dominate_1_4_3: x[4,3] + d[1,3] <= 1
 Dominate_1_4_4: x[4,4] + d[1,4] <= 1
 Dominate_1_5_1: x[5,1] + d[1,1] <= 1
 Dominate_1_5_2: x[5,2] + d[1,2] <= 1
 Dominate_1_5_3: x[5,3] + d[1,3] <= 1
 Dominate_1_5_4: x[5,4] + d[1,4] <= 1
 Dominate_2_4_1: x[4,1] + d[2,1] <= 1
 Dominate_2_4_2: x[4,2] + d[2,2] <= 1
 Dominate_2_4_3: x[4,3] + d[2,3] <= 1
 Dominate_2_4_4: x[4,4] + d[2,4] <= 1
 Dominate_2_5_1: x[5,1] + d[2,1] <= 1
 Dominate_2_5_2: x[5,2] + d[2,2] <= 1
 Dominate_2_5_3: x[5,3] + d[2,3] <= 1
 Dominate_2_5_4: x[5,4] + d[2,4] <= 1
 Dominate_3_1_1: x[1,1] + d[3,1] <= 1
 Dominate_3_1_2: x[1,2] + d[3,2] <= 1
 Dominate_3_1_3: x[1,3] + d[3,3] <= 1
 Dominate_3_1_4: x[1,4] + d[3,4] <= 1
 Dominate_3_5_1: x[5,1] + d[3,1] <= 1
 Dominate_3_5_2: x[5,2] + d[3,2] <= 1
 Dominate_3_5_3: x[5,3] + d[3,3] <= 1
 Dominate_3_5_4: x[5,4] + d[3,4] <= 1
 Dominate_4_1_1: x[1,1] + d[4,1] <= 1
 Dominate_4_1_2: x[1,2] + d[4,2] <= 1
 Dominate_4_1_3: x[1,3] + d[4,3] <= 1
 Dominate_4_1_4: x[1,4] + d[4,4] <= 1
 Dominate_4_2_1: x[2,1] + d[4,1] <= 1
 Dominate_4_2_2: x[2,2] + d[4,2] <= 1
 Dominate_4_2_3: x[2,3] + d[4,3] <= 1
 Dominate_4_2_4: x[2,4] + d[4,4] <= 1
 Dominate_5_1_1: x[1,1] + d[5,1] <= 1
 Dominate_5_1_2: x[1,2] + d[5,2] <= 1
 Dominate_5_1_3: x[1,3] + d[5,3] <= 1
 Dominate_5_1_4: x[1,4] + d[5,4] <= 1
 Dominate_5_2_1: x[2,1] + d[5,1] <= 1
 Dominate_5_2_2: x[2,2] + d[5,2] <= 1
 Dominate_5_2_3: x[2,3] + d[5,3] <= 1
 Dominate_5_2_4: x[2,4] + d[5,4] <= 1
 Dominate_5_3_1: x[3,1] + d[5,1] <= 1
 Dominate_5_3_2: x[3,2] + d[5,2] <= 1
 Dominate_5_3_3: x[3,3] + d[5,3] <= 1
 Dominate_5_3_4: x[3,4] + d[5,4] <= 1
 DominateBlock_1: d[1,1] + d[1,2] + d[1,3] + d[1,4] = 1
 DominateBlock_2: d[2,1] + d[2,2] + d[2,3] + d[2,4] = 1
 DominateBlock_3: d[3,1] + d[3,2] + d[3,3] + d[3,4] = 1
 DominateBlock_4: d[4,1] + d[4,2] + d[4,3] + d[4,4] = 1
 DominateBlock_5: d[5,1] + d[5,2] + d[5,3] + d[5,4] = 1
 Order_1: x[1,1] - x[1,2] + x[2,1] - x[2,2] + x[3,1] - x[3,2] + x[4,1]
   - x[4,2] + x[5,1] - x[5,2] >= 0
 Order_2: x[1,2] - x[1,3] + x[2,2] - x[2,3] + x[3,2] - x[3,3] + x[4,2]
   - x[4,3] + x[5,2] - x[5,3] >= 0
 Order_3: x[1,3] - x[1,4] + x[2,3] - x[2,4] + x[3,3] - x[3,4] + x[4,3]
   - x[4,4] + x[5,3] - x[5,4] >= 0
Bounds
 x[1,1] <= 1
 x[1,2] <= 1
 x[1,3] <= 1
 x[1,4] <= 1
 x[2,1] <= 1
 x[2,2] <= 1
 x[2,3] <= 1
 x[2,4] <= 1
 x[3,1] <= 1
 x[3,2] <= 1
 x[3,3] <= 1
 x[3,4] <= 1
 x[4,1] <= 1
 x[4,2] <= 1
 x[4,3] <= 1
 x[4,4] <= 1
 x[5,1] <= 1
 x[5,2] <= 1
 x[5,3] <= 1
 x[5,4] <= 1
 d[1,1] <= 1
 d[1,2] <= 1
 d[1,3] <= 1
 d[1,4] <= 1
 d[2,1] <= 1
 d[2,2] <= 1
 d[2,3] <= 1
 d[2,4] <= 1
 d[3,1] <= 1
 d[3,2] <= 1
 d[3,3] <= 1
 d[3,4] <= 1
 d[4,1] <= 1
 d[4,2] <= 1
 d[4,3] <= 1
 d[4,4] <= 1
 d[5,1] <= 1
 d[5,2] <= 1
 d[5,3] <= 1
 d[5,4] <= 1
End
