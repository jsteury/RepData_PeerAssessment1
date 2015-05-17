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


#Debugging

for(i in seq_along(idx)) {
        intrv = aDataF[idx,]$interval
        #debug print statements
        #       print("idx,intrv"); print(idx[1:5]);print(intrv[1:5])
        
        x=which(intervalMean$interval==intrv)
        #      print("1. aDataF");print(aDataF[idx,]$steps[1:5])
        aDataF[idx,]$steps = intervalMean[x,]$avgByInterval
        #     print("aDataF");print(aDataF[idx,]$steps[1:5])
        #     aDataF[idx,]$steps = 1000
        #print("aDataF");print(aDataF[idx,]$steps[1:5])
        
}
# aData[1:1000,]$steps
mean(aData[1:5000,]$steps)
#aDataTbl[1:1000,]$steps
mean(aDataTbl[1:5000,]$steps)

mean(aDataInt[1:5000,]$steps)
#aDataF[1:1000,]$steps
mean(aDataF[1:5000,]$steps)



