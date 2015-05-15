###  Coursera Reproducible Research, Project 1

setwd("activity")
fname="activity.csv"

#Load lubridate library
library(lubridate)

# Load dplyr library
library(dplyr)

#Read in data
aData<-read.csv(fname,stringsAsFactors=FALSE)

#  Convert dates from character to POSIXct class
dates<- ymd(aData$date)
aData$date <- dates

head(aData)
str(aData)
tail(aData)

aDataTbl = group_by(tbl_df(aData),date)
str(aDataTbl)
## What is mean total number of steps taken per day?

dailySteps <- summarize(aDataTbl,total=sum(steps))
dailyMean=mean(dailySteps$total,na.rm=TRUE)
dailyMedian = median(dailySteps$total,na.rm=TRUE)

# make a histogrm of daily steps
hist(dailySteps$total)
