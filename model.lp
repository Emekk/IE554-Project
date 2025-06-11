\ Model dominator-partition-fixed-k
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  - 0.400890010277988 x[1,1] - 0.1570348475555776 x[1,2]
   + 0.0506232035051541 x[1,3] + 0.9245587041441388 x[2,1]
   + 0.9553175544298824 x[2,2] + 0.3476887248687839 x[2,3]
   + 0.1872451977408838 x[3,1] - 0.116825464515262 x[3,2]
   + 0.6213261011102722 x[3,3] - 0.6684875227462213 x[4,1]
   + 0.2930741182132259 x[4,2] - 0.3634031782434519 x[4,3]
   - 0.5635890804489356 x[5,1] - 0.9492085965666197 x[5,2]
   - 0.7327483642686667 x[5,3] - 0.5168813674134074 d[1,1]
   - 0.4314434766277015 d[1,2] - 0.2766330067715315 d[1,3]
   + 0.4426678459858808 d[2,1] + 0.6921718622637225 d[2,2]
   + 0.6906885524293429 d[2,3] + 0.9227023410628865 d[3,1]
   - 0.4189909125274132 d[3,2] + 0.0631617110159286 d[3,3]
   - 0.0513635075840235 d[4,1] + 0.4458284380803637 d[4,2]
   + 0.4240042881933599 d[4,3] - 0.5305751637820304 d[5,1]
   - 0.4841173466196247 d[5,2] - 0.5913014463314099 d[5,3]
Subject To
 Assign_1: x[1,1] + x[1,2] + x[1,3] = 1
 Assign_2: x[2,1] + x[2,2] + x[2,3] = 1
 Assign_3: x[3,1] + x[3,2] + x[3,3] = 1
 Assign_4: x[4,1] + x[4,2] + x[4,3] = 1
 Assign_5: x[5,1] + x[5,2] + x[5,3] = 1
 NonEmptyBlock_1: x[1,1] + x[2,1] + x[3,1] + x[4,1] + x[5,1] >= 1
 NonEmptyBlock_2: x[1,2] + x[2,2] + x[3,2] + x[4,2] + x[5,2] >= 1
 NonEmptyBlock_3: x[1,3] + x[2,3] + x[3,3] + x[4,3] + x[5,3] >= 1
 Dominate_1_3_1: x[3,1] + d[1,1] <= 1
 Dominate_1_3_2: x[3,2] + d[1,2] <= 1
 Dominate_1_3_3: x[3,3] + d[1,3] <= 1
 Dominate_1_4_1: x[4,1] + d[1,1] <= 1
 Dominate_1_4_2: x[4,2] + d[1,2] <= 1
 Dominate_1_4_3: x[4,3] + d[1,3] <= 1
 Dominate_1_5_1: x[5,1] + d[1,1] <= 1
 Dominate_1_5_2: x[5,2] + d[1,2] <= 1
 Dominate_1_5_3: x[5,3] + d[1,3] <= 1
 Dominate_2_4_1: x[4,1] + d[2,1] <= 1
 Dominate_2_4_2: x[4,2] + d[2,2] <= 1
 Dominate_2_4_3: x[4,3] + d[2,3] <= 1
 Dominate_2_5_1: x[5,1] + d[2,1] <= 1
 Dominate_2_5_2: x[5,2] + d[2,2] <= 1
 Dominate_2_5_3: x[5,3] + d[2,3] <= 1
 Dominate_3_1_1: x[1,1] + d[3,1] <= 1
 Dominate_3_1_2: x[1,2] + d[3,2] <= 1
 Dominate_3_1_3: x[1,3] + d[3,3] <= 1
 Dominate_3_5_1: x[5,1] + d[3,1] <= 1
 Dominate_3_5_2: x[5,2] + d[3,2] <= 1
 Dominate_3_5_3: x[5,3] + d[3,3] <= 1
 Dominate_4_1_1: x[1,1] + d[4,1] <= 1
 Dominate_4_1_2: x[1,2] + d[4,2] <= 1
 Dominate_4_1_3: x[1,3] + d[4,3] <= 1
 Dominate_4_2_1: x[2,1] + d[4,1] <= 1
 Dominate_4_2_2: x[2,2] + d[4,2] <= 1
 Dominate_4_2_3: x[2,3] + d[4,3] <= 1
 Dominate_5_1_1: x[1,1] + d[5,1] <= 1
 Dominate_5_1_2: x[1,2] + d[5,2] <= 1
 Dominate_5_1_3: x[1,3] + d[5,3] <= 1
 Dominate_5_2_1: x[2,1] + d[5,1] <= 1
 Dominate_5_2_2: x[2,2] + d[5,2] <= 1
 Dominate_5_2_3: x[2,3] + d[5,3] <= 1
 Dominate_5_3_1: x[3,1] + d[5,1] <= 1
 Dominate_5_3_2: x[3,2] + d[5,2] <= 1
 Dominate_5_3_3: x[3,3] + d[5,3] <= 1
 DominateBlock_1: d[1,1] + d[1,2] + d[1,3] = 1
 DominateBlock_2: d[2,1] + d[2,2] + d[2,3] = 1
 DominateBlock_3: d[3,1] + d[3,2] + d[3,3] = 1
 DominateBlock_4: d[4,1] + d[4,2] + d[4,3] = 1
 DominateBlock_5: d[5,1] + d[5,2] + d[5,3] = 1
 Order_1: x[1,1] - x[1,2] + x[2,1] - x[2,2] + x[3,1] - x[3,2] + x[4,1]
   - x[4,2] + x[5,1] - x[5,2] >= 0
 Order_2: x[1,2] - x[1,3] + x[2,2] - x[2,3] + x[3,2] - x[3,3] + x[4,2]
   - x[4,3] + x[5,2] - x[5,3] >= 0
 Valid_Min_Assignment1: x[1,1] + x[2,1] + x[3,1] + x[4,1] + x[5,1] >= 2
 Valid_Max_Assignment_1: x[1,1] + x[2,1] + x[3,1] + x[4,1] + x[5,1] <= 3
 Valid_Max_Assignment_2: x[1,2] + x[2,2] + x[3,2] + x[4,2] + x[5,2] <= 2
 Valid_Max_Assignment_3: x[1,3] + x[2,3] + x[3,3] + x[4,3] + x[5,3] <= 1
 Valid_Dominate_1_1: - x[1,1] - x[2,1] + d[1,1] >= -1
 Valid_Dominate_1_2: - x[1,2] - x[2,2] + d[1,2] >= -1
 Valid_Dominate_1_3: - x[1,3] - x[2,3] + d[1,3] >= -1
 Valid_Dominate_2_1: - x[1,1] - x[2,1] - x[3,1] + d[2,1] >= -2
 Valid_Dominate_2_2: - x[1,2] - x[2,2] - x[3,2] + d[2,2] >= -2
 Valid_Dominate_2_3: - x[1,3] - x[2,3] - x[3,3] + d[2,3] >= -2
 Valid_Dominate_3_1: - x[2,1] - x[3,1] - x[4,1] + d[3,1] >= -2
 Valid_Dominate_3_2: - x[2,2] - x[3,2] - x[4,2] + d[3,2] >= -2
 Valid_Dominate_3_3: - x[2,3] - x[3,3] - x[4,3] + d[3,3] >= -2
 Valid_Dominate_4_1: - x[3,1] - x[4,1] - x[5,1] + d[4,1] >= -2
 Valid_Dominate_4_2: - x[3,2] - x[4,2] - x[5,2] + d[4,2] >= -2
 Valid_Dominate_4_3: - x[3,3] - x[4,3] - x[5,3] + d[4,3] >= -2
 Valid_Dominate_5_1: - x[4,1] - x[5,1] + d[5,1] >= -1
 Valid_Dominate_5_2: - x[4,2] - x[5,2] + d[5,2] >= -1
 Valid_Dominate_5_3: - x[4,3] - x[5,3] + d[5,3] >= -1
 Valid_Dominate_Upper_1_1: - x[1,1] - x[2,1] + d[1,1] <= 0
 Valid_Dominate_Upper_1_2: - x[1,2] - x[2,2] + d[1,2] <= 0
 Valid_Dominate_Upper_1_3: - x[1,3] - x[2,3] + d[1,3] <= 0
 Valid_Dominate_Upper_2_1: - x[1,1] - x[2,1] - x[3,1] + d[2,1] <= 0
 Valid_Dominate_Upper_2_2: - x[1,2] - x[2,2] - x[3,2] + d[2,2] <= 0
 Valid_Dominate_Upper_2_3: - x[1,3] - x[2,3] - x[3,3] + d[2,3] <= 0
 Valid_Dominate_Upper_3_1: - x[2,1] - x[3,1] - x[4,1] + d[3,1] <= 0
 Valid_Dominate_Upper_3_2: - x[2,2] - x[3,2] - x[4,2] + d[3,2] <= 0
 Valid_Dominate_Upper_3_3: - x[2,3] - x[3,3] - x[4,3] + d[3,3] <= 0
 Valid_Dominate_Upper_4_1: - x[3,1] - x[4,1] - x[5,1] + d[4,1] <= 0
 Valid_Dominate_Upper_4_2: - x[3,2] - x[4,2] - x[5,2] + d[4,2] <= 0
 Valid_Dominate_Upper_4_3: - x[3,3] - x[4,3] - x[5,3] + d[4,3] <= 0
 Valid_Dominate_Upper_5_1: - x[4,1] - x[5,1] + d[5,1] <= 0
 Valid_Dominate_Upper_5_2: - x[4,2] - x[5,2] + d[5,2] <= 0
 Valid_Dominate_Upper_5_3: - x[4,3] - x[5,3] + d[5,3] <= 0
 Valid_Indep_1_{1,_4}: d[1,1] + d[4,1] <= 1
 Valid_Indep_1_{1,_5}: d[1,1] + d[5,1] <= 1
 Valid_Indep_1_{2,_5}: d[2,1] + d[5,1] <= 1
 Valid_Indep_2_{1,_4}: d[1,2] + d[4,2] <= 1
 Valid_Indep_2_{1,_5}: d[1,2] + d[5,2] <= 1
 Valid_Indep_2_{2,_5}: d[2,2] + d[5,2] <= 1
 Valid_Indep_3_{1,_4}: d[1,3] + d[4,3] <= 1
 Valid_Indep_3_{1,_5}: d[1,3] + d[5,3] <= 1
 Valid_Indep_3_{2,_5}: d[2,3] + d[5,3] <= 1
Bounds
 x[1,1] <= 1
 x[1,2] <= 1
 x[1,3] <= 1
 x[2,1] <= 1
 x[2,2] <= 1
 x[2,3] <= 1
 x[3,1] <= 1
 x[3,2] <= 1
 x[3,3] <= 1
 x[4,1] <= 1
 x[4,2] <= 1
 x[4,3] <= 1
 x[5,1] <= 1
 x[5,2] <= 1
 x[5,3] <= 1
 d[1,1] <= 1
 d[1,2] <= 1
 d[1,3] <= 1
 d[2,1] <= 1
 d[2,2] <= 1
 d[2,3] <= 1
 d[3,1] <= 1
 d[3,2] <= 1
 d[3,3] <= 1
 d[4,1] <= 1
 d[4,2] <= 1
 d[4,3] <= 1
 d[5,1] <= 1
 d[5,2] <= 1
 d[5,3] <= 1
End
