############
# R-File to make graphs and descriptive statistics for Assignment 1
# Torben and Alexander
# Updated September 30, 2016
###########
#####################
# Data presentation
#####################

# 1. Data preparation
#list of factors
cause.level <- levels(policeKilling$cause)
#count the causes
cause.count <- count(policeKilling, "cause")[,2]
#put them together in a df
cause.df <- data.frame(cause.level, cause.count)

#2. Charts

# Simple Bar Plot (from R) - not used in assignment
cause.tab <- table(policeKilling$cause)
barplot(cause.tab, main="Number of death by cause",
        xlab="Cause")





