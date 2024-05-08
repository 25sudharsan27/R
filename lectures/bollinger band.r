#----------------------------------------------------------------------------
#----------------------------------------------------------------------------

# Title: Technical Analysis Using R

#----------------------------------------------------------------------------

# module A: Data Input

#select the BSE stock price csv file
input<-read.csv(file.choose(), sep=",", header=T)    
head(input)

datadf <- data.frame(TrDate=as.Date(input$Date,format="%d-%b-%Y"),                                        OpenPrice=input$Open.Price, 
                     HighPrice=input$High.Price, 
                     LowPrice=input$Low.Price, 
                     ClosePrice=input$Close.Price, 
                     volume=input$No.of.Shares, 
                     spCloseOpen=input$Spread.Close.Open)

abc <- datadf[order(datadf$TrDate, decreasing=F),]
rownames(abc)<-c(1:nrow(datadf))
str(abc)
head(abc)

abc$TrDate <- as.character(abc$TrDate, format="%d-%b-%y")

head(abc)
tail(abc)

print(paste("number of trading days in the dataset = ", nrow(abc)))

# module A: Data Input End

#----------------------------------------------------------------------------

# module A1
# Technical Analysis: Simple Moving Average, SMA

library(TTR)
sma<-SMA(abc$ClosePrice, n=20)
xyz<-data.frame(TrDate=abc$TrDate, ClosePrice=abc$ClosePrice, 
                volume=abc$volume, sma)
head(xyz, 24)
layout(matrix(c(1,1,1,2,2), nrow=5, ncol=1))

plot(abc$ClosePrice, xaxt="n", type="l", col=2, xlab="Date", 
     ylim=c(min(abc$ClosePrice)*0.95, max(abc$ClosePrice)*1.05), 
     ylab= "Close Price", main="SMA20", lwd=2)

axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}

lines(xyz$sma, type="l", col='blue')
legend("topleft", lty=c(1,1), col=c('red', 'blue'), 
       legend=c("Close Price", "SMA20"), 
       bty="n", cex=0.6, lwd=c(2,1))

plot(abc$volume, type="h", xaxt="n", col="green", xlab="", 
     main="", sub="", ylab="volume")

axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}



#----------------------------------------------------------------------------


# Technical Analysis: EMA

library(TTR)
ema<-EMA(abc$ClosePrice, n=20)
xyz<-data.frame(TrDate=abc$TrDate, ClosePrice=abc$ClosePrice, 
                volume=abc$volume, ema)
head(xyz,24)
layout(matrix(c(1,1,1,2,2), nrow=5, ncol=1))
plot(abc$ClosePrice, xaxt="n", type="l", col=2, xlab="Date", 
     ylim=c(min(abc$ClosePrice)*0.95, max(abc$ClosePrice)*1.05), 
     ylab="Close Price", main="EMA20", lwd=2)
axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}

lines(xyz$ema, type="l", col='blue')
legend("topleft", lty=c(1,1), col=c('red', 'blue'), 
       legend=c("Close Price", "SMA"), bty="n", 
       cex=0.6, lwd=c(2,1))

plot(abc$volume, type="h", xaxt="n", col="green", 
     xlab="", main="", sub="", ylab="volume")
axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}


#----------------------------------------------------------------------------

# module A3
# Technical Analysis: Bollinger Bands

library(TTR)
bb20<-BBands(abc$ClosePrice, sd=2)
xyz<-data.frame(TrDate=abc$TrDate, ClosePrice=abc$ClosePrice, 
                volume=abc$volume, bb20)
head(xyz,24)
layout(matrix(c(1,1,1,2,2), nrow=5, ncol=1))
plot(abc$ClosePrice, xaxt="n", type="l", col=2, 
     ylim=c(min(abc$ClosePrice)*0.95, max(abc$ClosePrice)*1.05), xlab="Date", 
     main="", sub="", ylab="Close Price", cex=0.6, lwd=2)
axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}

lines(xyz$up, type="l", col='green')
lines(xyz$dn, type="l", col='green')
lines(xyz$mavg, type="l", col='blue')
legend("topleft", col=c('red', 'green', 'green', 'blue'), lty=c(1,1,1,1), 
       legend=c('Close Price', 'up', 'dn', 'mavg'), 
       bty="n", cex=0.6, lwd=c(2,1,1,1))

plot(abc$volume, type="h", xaxt="n", col="green", 
     xlab="", main="", sub="", ylab="volume")
axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}

#---Bollinger bands plot---



# module A3 End

#----------------------------------------------------------------------------

# module A4
#Technical Analysis: Moving Average Convergence Divergence, MACD

library(TTR)

sma<-SMA(abc$ClosePrice, n=20)

# Let us calculate standard (12,26,9) MACD
macd<-MACD(abc$ClosePrice, nFast=12, nSlow=26, nSig=9, maType=SMA)
xyz<-data.frame(TrDate=abc$TrDate, ClosePrice=abc$ClosePrice, 
                volume=abc$volume, macd, sma)
head(xyz,40)
layout(matrix(c(1,1,1,2,2), nrow=5, ncol=1))
plot(abc$ClosePrice, xaxt="n", type="l", col=2, xlab="Date", 
     ylim=c(min(abc$ClosePrice)*0.95, max(abc$ClosePrice)*1.05), 
     ylab="Close Price", mai=c(0.1,0.5,0.1,0.1), main=NA, sub=NA, lwd=2)

axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}

lines(xyz$sma, type="l", col='blue')
legend("topleft", lty=c(1,1), col=c('red', 'blue'), 
       legend=c("Close Price", "SMA20"), bty="n", 
       cex=0.6, lwd=c(2,1))
plot(xyz$macd, xaxt="n", type="l", col="green", ylab="MACD/Signal", 
     mai=c(0.1,0.5,0.1,0.1), xlab=NA, main=NA, sub=NA)
axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}

lines(xyz$signal, type="l", col='brown')
abline(h=0, col='purple')
legend("topleft", col=c('green', 'brown'), lty=c(1,1), 
       legend=c('macd', 'signal'), bty="n", cex=0.6)


#---MACD plot---

# pl read the description given below the video
# give 'Like' and 'Subscribe', if you like the video
# in case you do not like the video, give comments

# module A4 End

#----------------------------------------------------------------------------

# module A5
# Technical Analysis: Relative Strength Index, RSI

library(TTR)

sma<-SMA(abc$ClosePrice, n=20)

rsi14<-RSI(abc$ClosePrice, n=14)
xyz<-data.frame(TrDate=abc$TrDate, ClosePrice=abc$ClosePrice, 
                volume=abc$volume, rsi14, sma)
head(xyz,20)
tail(xyz,20)
layout(matrix(c(1,1,1,2,2), nrow=5, ncol=1))
plot(abc$ClosePrice, xaxt="n", type="l", col=2, xlab="Date", main="", 
     sub="", ylim=c(min(abc$ClosePrice)*0.95, max(abc$ClosePrice)*1.05), 
     ylab="Close Price", mai=c(0.1,1,0.1,0.5), lwd=2)
axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}

lines(xyz$sma, type="l", col='blue')
legend("topleft", lty=c(1,1), col=c('red', 'blue'), 
       legend=c("Close Price", "SMA20"), bty="n", cex=0.6, lwd=c(2,1))

plot(xyz$rsi14, xaxt="n", type="l", col="blue", 
     ylim=c(0,100), xlab="", main="", sub="",  
     ylab="RSI", mai=c(0.1,1,0.1,0.5))
axis(1, at=1:nrow(abc), labels=abc$TrDate)
axis(2, tck=1, col.ticks="lightgray")
for (i in 0:10){
  abline(v=i*nrow(abc)/10, lty=2, col="lightgray")
}

abline(h=30, lty=2, col="red")
abline(h=70, lty=2, col="red")
text(5,40, "RSI=30", col="blue")
text(5,80, "RSI=70", col="blue")
