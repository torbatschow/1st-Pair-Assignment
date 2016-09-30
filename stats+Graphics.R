############
# R-File to make graphs and descriptive statistics for Assignment 1
# Torben and Alexander
# Updated September 30, 2016
###########



#####
#Data presentation
####

# Idea: Barplot of number of killed on y axis and ethnicity on x axis

#killEthnicity <- barplot(policeKilling$raceethnicity,
#              main = "Ethnicity of individuals killed by policy",
#             names.arg = c("Black","Brown","Red","Blonde"),
#              ylab = "Absolute number",
#              ylim = c(0,130),
#              col = c("black", "brown", "red", "yellow")
# )
# Adding actual numbers on the bars
#text(killEthnicity,HairEyeColorTable[,1]-4, 
#     labels=HairEyeColorTable[,1], 
#     cex = 1, 
#     adj = c(1,-1))


# Idea: Mosaique Plot of cause of death and whether they are armed 
