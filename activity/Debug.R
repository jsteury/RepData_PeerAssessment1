
aDataF=aData
for(i in seq_along(idx)) {
        intrv = aDataF[idx[i],]$interval
        #debug print statements
           #  print("idx,intrv"); print(idx[1:5]);print(intrv)
        
        x=which(intervalMean$interval==intrv)
            #  print("1. aDataF");print(aDataF[idx,]$steps)
        aDataF[idx[i],]$steps = intervalMean[x,]$avgByInterval
             #print("aDataF");print(aDataF[idx[i],]$steps)
          #  aDataF[idx,]$steps = 1000
        print("i");print(i);print(aDataF[idx[i],]$steps)
        
        # aData[1:1000,]$steps
        m1=mean(aData[1:i,]$steps)
        
        #aDataF[1:1000,]$steps
        m2=mean(aDataF[1:i,]$steps)
        
}



