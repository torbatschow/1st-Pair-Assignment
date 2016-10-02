############
# R-File Get and Clean Data for Assignment 1
# Torben and Alexander
# Updated September 30, 2016
###########

#Clear Global environment
rm(list=ls())

#Collect packages/libraries we need:
# RCurl is needed to access https from github, see http://stackoverflow.com/questions/14441729/read-a-csv-from-github-into-r
packages <- c("RCurl")

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
births <- read.csv(text = getURL("https://raw.githubusercontent.com/fivethirtyeight/data/master/births/US_births_2000-2014_SSA.csv"))

#######################
#Clean Data
######################

#for the assignment we need only a few entries of the dataset. We will select them here and assign them to a separate variable.






