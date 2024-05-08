#Graphs and Charts in R
#1. Line Plot
x <- 1:10                                
y <- c(3, 1, 5, 2, 3, 8, 4, 7, 6, 9)
grange=c(1,20)
plot(x, y, type = "o",pch=8)   
plot(x,y,type='l',main="Line chart",xlab="x axis",ylab="y axis",
     col.main="red")
plot(x,y,type='l',main="Line chart",xlab="x axis",ylab="y axis",
     col="pink",ylim=grange)
plot(x,y,type='l',main="Line chart",xlab="x axis",ylab="y axis",
     col="pink",lwd=10,ylim=grange)
plot(x,y,type='b',main="Line chart",xlab="x axis",ylab="y axis",
     col="pink",ylim=grange)
plot(x,y,type='l',main="Line chart",xlab="x axis",ylab="y axis",
     col="purple",ylim=grange)
y2=c(1,3,5,7,9,2,4,6,8,20)
lines(x,y2,type='o',col="darkgreen",ylim=grange,pch=3)

legend("topleft",                                     
       legend = c("Line1", "Line2"),
       col = c("black", "darkgreen"),cex=0.35,bty = "o",bg="pink",
       lty = 1,pch=c(8,3))
library(ggplot2)
data <- data.frame(x = rep(1:10, 2),y = c(y, y2),
                   line = c(rep("y", 10),
                            rep("y2", 10)
                            ))
data
ggplot(data, aes(x = x, y = y, col = line)) +  geom_line()

par(bg="lightpink")
x=c(1,2,3,4,5,6,7,8,9,10)
y=c(1,5,8,5,2,7,9,10,2,8)
plot(x,y)
plot(x,y,type='l')
plot(x,y,type='c')
plot(x,y,type='o')
plot(x,y,type='h')
plot(x,y,type='n')
plot(x,y,type='l',lwd=6,col="darkgreen")
plot(x,y,type='b',lwd=3,col="darkgreen",pch=5)
plot(x,y,type='l',lwd=6,col="darkgreen",main="Line chart",
     xlab="Years",ylab="Experience",col.main="red")
plot(x,y,type='o',col="darkgreen",main="Line chart",
     xlab="Years",ylab="Experience",col.main="red",xlim=c(0,20),
     ylim=c(0,50),col.lab="cyan",cex.lab=1.2,
     sub="Line chart comparing years and experience",
     cex.sub=0.8,col.sub="magenta",pch=22)

y1=c(10,22,25,24,20,15,36,28,38,40)

lines(x,y1,type="o",pch=8,col="cyan")

legend("topright",
       legend=c("Line1","Line2"),col=c("darkgreen","cyan"),
       pch=c(22,8),cex=0.5)












