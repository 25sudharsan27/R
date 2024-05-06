# Scatter Plot



# library(plot)

Orange


orange<- Orange[c('age','circumference')]

head(orange)

png(file="plot.p+ng")

dev.off()


# col.main represents to the title of the chart
# col.axis represents the datas of the axis
# col.lab represent the label of the axis
# used to draw points in the graphg

plot(x=orange$age,y=orange$circumference,xlab="Age",ylab="Circumference",
     main="Age Vs circumference",col.lab="black",col.main="green",
     col.axis="darkgreen")

dev.off()

# plotting scatterplot matrixt
# using dataset Orange


png("pairs.png")
pairs(~circumference+age,data=Orange,col.axis="darkgreen")



dev.off()


# Box plotting

x<- c(42,21,22,24,25,30,29,22,23,23,24,28,32,45,39,40)

png(file="boxplot.png")
boxplot(x,xlab="Box Plot",ylab="Age",col.axis="darkgreen",col.lab="darkgreen")
dev.off()

mtcars
png(file="mtcars.png")

plot(x=mtcars$wt, y =mtcars$mpg, pch=16,xlab="Weight (int 1000 lbs)",ylab="Miles per gallon",col="royalblue4" )
dev.off()


x<- mtcars$wt
y<- mtcars$mpg

# lm function inside the abline fucntion is used to draw regression line 

plot(x,y,main="Main title of the graph",xlab="X axis title",ylab="Y axis title",abline(lm(y~x)))





# ggplot
# grammar of graphics
# graphics= distinct layers of grammatical elements
# meaningful plots through aesthetic mappings
# components of grammer of graphics


# Components of grammar of graphics
# 1. DATA : The dataset
# 2. AESTHETICS : the metric onto which we plot data
# 3. GEOMETRY : visual elements to plot the data
# 4. FACET : groups by which we divide the data
# 5. statistics, coordinates, themes

install.packages("ggplot2")
install.packages("ggplot")

library(ggplot2)

View(iris)

ggplot(data=iris)

# add nextt layer after data layer aesthetics, include axis
# aesthetics means just creating a graph space to visualize the data for graph 
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))

p<-ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))

p+geom_point()

# make facet according the species so that we are giving species in Species ~ we are using to wrap the element sin the columsn

ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()+facet_wrap(~Species)




# method ="lm" used to find the regression line in the graph  using theme we can give color to the graph
ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")+
  theme(axis.text=element_text(color="green",size=14))

library(dplyr)


ggplot(filter(iris,Species=="setosa"),aes(x=Sepal.Length,y=Sepal.Width))+geom_point()+coord_cartesian(xlim=c(4,8),ylim=c(2,5))


ggplot(data=iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()+facet_wrap(~Species)+geom_smooth(method="lm")+theme(axis.text=element_text(color="green",size=14))



