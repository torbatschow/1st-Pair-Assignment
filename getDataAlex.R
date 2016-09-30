############
# R-File Get and Clean Data for Assignment 1
# Torben and Alexander
# Updated September 30, 2016
# Formatted according to Google style guide
###########

#Load packages
library(RCurl) #needed to access https from github, see http://stackoverflow.com/questions/14441729/read-a-csv-from-github-into-r

#Set Working Directory
try(setwd("/home/torben/GIT/1st-Pair-Assignment"), silent = TRUE)
try(setwd("D:/Eigene Datein/Dokumente/Uni/Hertie/Materials/Collaborative Social Science Data Analysis/1st-Pair-Assignment"), silent = TRUE)

#Get Data
#Source: https://github.com/fivethirtyeight/data

trumpTwitterRaw <- getURL("https://raw.githubusercontent.com/fivethirtyeight/data/master/trump-twitter/realDonaldTrump_poll_tweets.csv")
trumpTwitter <- read.csv(text = x)

#Clean Data

#hallo mama

#Hallo Papa, sagt auch Torben!

