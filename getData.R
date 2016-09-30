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
    install.packages(p)
  }
  require(p, character.only=T)
}


#Set Working Directory
try(setwd("/home/torben/GIT/1st-Pair-Assignment"), silent = TRUE)
try(setwd("D:/Eigene Datein/Dokumente/Uni/Hertie/Materials/Collaborative Social Science Data Analysis/1st-Pair-Assignment"), silent = TRUE)

#Get Data
#Source: https://github.com/fivethirtyeight/data

trumpTwitterRaw <- getURL("https://raw.githubusercontent.com/fivethirtyeight/data/master/trump-twitter/realDonaldTrump_poll_tweets.csv")
trumpTwitter <- read.csv(text = trumpTwitterRaw)

weatherRaw <- getURL("https://raw.githubusercontent.com/fivethirtyeight/data/master/us-weather-history/KCLT.csv")
weather <- read.csv(text = weatherRaw)

#Clean Data





