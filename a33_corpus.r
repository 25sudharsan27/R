# Date format

input <- read.csv(file.choose())

head(input)



datadf<- data.frame(TrDate=as.Date(input$Date,format="%d-%b-%Y"),
                    HighPrice=input$High.Price,
                    LowPrice=input$Low.Price,
                    ClosePrice=input$Close.Price,
                    volume=input$No.of.Shares,
                    spCloseOpen=input$Spread.Close.Open)

datadf



abc<- datadf[order(datadf$TrDate,decreasing=F),]
rownames(abc)<- c(1:nrow(datadf))

str(abc)
head(abc)

abc$TrDate <- as.character(abc$TrDate,format="%d-%b-%y")

head(abc)
tail(abc)

print(paste("number of trading days in the dataseet = ",nrow(abc)))

library(TTR)

install.packages("TTR")


sma <- SMA(a)


