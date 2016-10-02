############
# R-File Get and Clean Data for Assignment 1
# Torben and Alexander
# Updated September 30, 2016
###########

#Clear Global environment
rm(list=ls())

#Collect packages/libraries we need:
# RCurl is needed to access https from github, see http://stackoverflow.com/questions/14441729/read-a-csv-from-github-into-r
packages <- c("RCurl", "gplots", "RColorBrewer")

#install packages if not installed before
for (p in packages) {
  if (p %in% installed.packages()[,1]) require(p, character.only=T)
  else {
    install.packages(p, dependencies = TRUE)
  }
  require(p, character.only=T)
}
library(RCurl) # @Alex: Why do we again list this here after we have already loaded it?
library(bitops) # @Alex: Why don't we include it in the "packages" list above?

#Set Working Directory
try(setwd("/home/torben/GIT/1st-Pair-Assignment"), silent = TRUE)
try(setwd("D:/Eigene Datein/Dokumente/Uni/Hertie/Materials/Collaborative Social Science Data Analysis/1st-Pair-Assignment"), silent = TRUE)

#######################
#Get Data
#Source: https://github.com/fivethirtyeight/data
########################
#Police killings
policeKilling <- read.csv(text = getURL("https://raw.githubusercontent.com/fivethirtyeight/data/master/police-killings/police_killings.csv"))

#US births 2000 - 2014
#Dataset from: https://github.com/fivethirtyeight/data/tree/master/births
births <- read.csv(text = getURL("https://raw.githubusercontent.com/fivethirtyeight/data/master/births/US_births_2000-2014_SSA.csv"))

#######################
#Clean Data
######################

#######################
#US births 2000 - 2014
#######################

#Generate lists with days of week and months
l_days_of_week <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
l_months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

#Re-label births variables and make them factors
births$day_of_week <- factor(births$day_of_week, levels = 1:7, labels = l_days_of_week)
births$month <- factor(births$month, levels = 1:12, labels = l_months)

#Generate matrix with births on specific days of week and specific months (Matrix is needed for heatmap.)
mat = matrix(nrow = 12, ncol = 7)
rownames(mat) <- l_months
colnames(mat) <- l_days_of_week
for (m in l_months) {
  for (wd in l_days_of_week) {
    mat[m, wd] <- Reduce("+", births[(births$month == m) & (births$day_of_week == wd), 5])
  }
}


#for the assignment we need only a few entries of the dataset. We will select them here and assign them to a separate variable.






