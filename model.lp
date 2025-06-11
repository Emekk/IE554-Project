\ Model dominator-partition-fixed-k
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa3dd3c5eefbc4417
Minimize
  0.0278866875453805 x[1,1] + 0.5463301041585935 x[1,2]
   + 0.7408553714496253 x[1,3] - 0.9839061029403642 x[2,1]
   - 0.3805281489895918 x[2,2] + 0.9152074787317819 x[2,3]
   + 0.0262334245357743 x[3,1] - 0.3634311502558027 x[3,2]
   + 0.0783998748512962 x[3,3] - 0.5574901151444802 x[4,1]
   + 0.61296271584854 x[4,2] - 0.3154907487706313 x[4,3]
   + 0.0777776981342893 d[1,1] - 0.9882524288978833 d[1,2]
   + 0.3463049563610507 d[1,3] - 0.5799514756425237 d[2,1]
   + 0.8651151857574237 d[2,2] - 0.2515105010370158 d[2,3]
   + 0.5048378441718928 d[3,1] + 0.5262780036910439 d[3,2]
   + 0.7409989105435002 d[3,3] - 0.7797776434867967 d[4,1]
   - 0.3998160392124324 d[4,2] - 0.050188468099063 d[4,3]
Subject To
 Assign_1: x[1,1] + x[1,2] + x[1,3] = 1
 Assign_2: x[2,1] + x[2,2] + x[2,3] = 1
 Assign_3: x[3,1] + x[3,2] + x[3,3] = 1
 Assign_4: x[4,1] + x[4,2] + x[4,3] = 1
 NonEmptyBlock_1: x[1,1] + x[2,1] + x[3,1] + x[4,1] >= 1
 NonEmptyBlock_2: x[1,2] + x[2,2] + x[3,2] + x[4,2] >= 1
 NonEmptyBlock_3: x[1,3] + x[2,3] + x[3,3] + x[4,3] >= 1
 Dominate_1_3_1: x[3,1] + d[1,1] <= 1
 Dominate_1_3_2: x[3,2] + d[1,2] <= 1
 Dominate_1_3_3: x[3,3] + d[1,3] <= 1
 Dominate_1_4_1: x[4,1] + d[1,1] <= 1
 Dominate_1_4_2: x[4,2] + d[1,2] <= 1
 Dominate_1_4_3: x[4,3] + d[1,3] <= 1
 Dominate_2_4_1: x[4,1] + d[2,1] <= 1
 Dominate_2_4_2: x[4,2] + d[2,2] <= 1
 Dominate_2_4_3: x[4,3] + d[2,3] <= 1
 Dominate_3_1_1: x[1,1] + d[3,1] <= 1
 Dominate_3_1_2: x[1,2] + d[3,2] <= 1
 Dominate_3_1_3: x[1,3] + d[3,3] <= 1
 Dominate_4_1_1: x[1,1] + d[4,1] <= 1
 Dominate_4_1_2: x[1,2] + d[4,2] <= 1
 Dominate_4_1_3: x[1,3] + d[4,3] <= 1
 Dominate_4_2_1: x[2,1] + d[4,1] <= 1
 Dominate_4_2_2: x[2,2] + d[4,2] <= 1
 Dominate_4_2_3: x[2,3] + d[4,3] <= 1
 DominateBlock_1: d[1,1] + d[1,2] + d[1,3] = 1
 DominateBlock_2: d[2,1] + d[2,2] + d[2,3] = 1
 DominateBlock_3: d[3,1] + d[3,2] + d[3,3] = 1
 DominateBlock_4: d[4,1] + d[4,2] + d[4,3] = 1
 Order_1: x[1,1] - x[1,2] + x[2,1] - x[2,2] + x[3,1] - x[3,2] + x[4,1]
   - x[4,2] >= 0
 Order_2: x[1,2] - x[1,3] + x[2,2] - x[2,3] + x[3,2] - x[3,3] + x[4,2]
   - x[4,3] >= 0
 Valid_Min_Assignment1: x[1,1] + x[2,1] + x[3,1] + x[4,1] >= 2
 Valid_Max_Assignment_1: x[1,1] + x[2,1] + x[3,1] + x[4,1] <= 2
 Valid_Max_Assignment_2: x[1,2] + x[2,2] + x[3,2] + x[4,2] <= 1
 Valid_Max_Assignment_3: x[1,3] + x[2,3] + x[3,3] + x[4,3] <= 1
 Valid_Dominate_1_1: - x[1,1] - x[2,1] + d[1,1] >= -1
 Valid_Dominate_1_2: - x[1,2] - x[2,2] + d[1,2] >= -1
 Valid_Dominate_1_3: - x[1,3] - x[2,3] + d[1,3] >= -1
 Valid_Dominate_2_1: - x[1,1] - x[2,1] - x[3,1] + d[2,1] >= -2
 Valid_Dominate_2_2: - x[1,2] - x[2,2] - x[3,2] + d[2,2] >= -2
 Valid_Dominate_2_3: - x[1,3] - x[2,3] - x[3,3] + d[2,3] >= -2
 Valid_Dominate_3_1: - x[2,1] - x[3,1] - x[4,1] + d[3,1] >= -2
 Valid_Dominate_3_2: - x[2,2] - x[3,2] - x[4,2] + d[3,2] >= -2
 Valid_Dominate_3_3: - x[2,3] - x[3,3] - x[4,3] + d[3,3] >= -2
 Valid_Dominate_4_1: - x[3,1] - x[4,1] + d[4,1] >= -1
 Valid_Dominate_4_2: - x[3,2] - x[4,2] + d[4,2] >= -1
 Valid_Dominate_4_3: - x[3,3] - x[4,3] + d[4,3] >= -1
 Valid_Dominate_Upper_1_1: - x[1,1] - x[2,1] + d[1,1] <= 0
 Valid_Dominate_Upper_1_2: - x[1,2] - x[2,2] + d[1,2] <= 0
 Valid_Dominate_Upper_1_3: - x[1,3] - x[2,3] + d[1,3] <= 0
 Valid_Dominate_Upper_2_1: - x[1,1] - x[2,1] - x[3,1] + d[2,1] <= 0
 Valid_Dominate_Upper_2_2: - x[1,2] - x[2,2] - x[3,2] + d[2,2] <= 0
 Valid_Dominate_Upper_2_3: - x[1,3] - x[2,3] - x[3,3] + d[2,3] <= 0
 Valid_Dominate_Upper_3_1: - x[2,1] - x[3,1] - x[4,1] + d[3,1] <= 0
 Valid_Dominate_Upper_3_2: - x[2,2] - x[3,2] - x[4,2] + d[3,2] <= 0
 Valid_Dominate_Upper_3_3: - x[2,3] - x[3,3] - x[4,3] + d[3,3] <= 0
 Valid_Dominate_Upper_4_1: - x[3,1] - x[4,1] + d[4,1] <= 0
 Valid_Dominate_Upper_4_2: - x[3,2] - x[4,2] + d[4,2] <= 0
 Valid_Dominate_Upper_4_3: - x[3,3] - x[4,3] + d[4,3] <= 0
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
End
