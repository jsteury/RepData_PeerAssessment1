

temp <- mutate(aDataF,wkDay=weekdays(date))
temp2 <- ifelse (temp$wkDay %in% c('Sunday','Saturday'),"weekend","weekday")
 

temp$wkDay <- factor(temp2)

