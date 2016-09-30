############
# R-File Get and Clean Data for Assignment 1
# Torben and Alexander
# Updated September 30, 2016
# Formatted according to Google style guide
###########

#Load packages
library(RCurl) #needed to access https from github, see http://stackoverflow.com/questions/14441729/read-a-csv-from-github-into-r

#Set Working Directory
try(setwd("D:/Eigene Datein/Dokumente/Uni/Hertie/Materials/Collaborative Social Science Data Analysis/1st-Pair-Assignment"), silent = TRUE)
try(setwd("C:/Users/Lisa/Documents/GitHub/CSSR_FinalProject"), silent = TRUE)

#Get Data

x <- getURL("https://raw.github.com/aronlindberg/latent_growth_classes/master/LGC_data.csv")
y <- read.csv(text = x)
#link: https://github.com/fivethirtyeight/data

#Clean Data

#hallo mama

#Hallo Papa, sagt auch Torben!

