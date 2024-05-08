# charts practice for end term practical


# types of charts

# Bar chart

# syntax is barplot(data,xlab,ylab)

# lab - label of x and y axis


x <- c(7,3,6,4,24,62,10)

png(file="barplot.png")

barplot(x,main="This is Bar chart",xlab="X axis ",ylab="Y axis",col.axis="darkgreen",col.lab="darkblue",col="white")

dev.off();




# PIE Chart 


# Syntax : pie (x,labels,col,main,radius)

names(x) <- c("UP","BH","DL","GJ","AP","TN","KL")

pie(x,labels=names(x),col=rainbow(length(x)),main="this is Pie Chart",radius=-1,col.main="darkgreen")



# Pie 3D Chart

# You have to import plotrix to use Pie Chart in 3D

library(plotrix)
install.packages(plotrix)


pie3D(x,labels=names(x),theta=1.5,height=0.2,radius=1,col=rainbow(length(x)),main="Pie chart in 3D",labelco="darkblue",col.main="darkgreen")


install.packages("plotrix")



# Histogram Chart

# bars repreenting the frequency of grupded data in vector.

# it is same as bar chart but the only difference is that it visualizes the frequency from our data


x <- c(21, 23, 56, 90, 20, 7, 94, 12,
       57, 76, 69, 45, 34, 32, 49, 55, 57)

hist(x,main="Histogram ",xlab="Values",col.main="darkgreen",col.lab="darkgreen",col=rainbow(length(x)))



# Scatter plot

# used  to plot the points to show relationship between two data vectors.

# syntax : plot(x,y,type,xlab,ylab,main)

orange  <- data.frame(age=Orange$age,circumference=Orange$circumference)

orange <- Orange[,c("age","circumference")]
orange


plot(x=orange$age,y=orange$circumference,xlab="age",ylab="circumference",col.lab="darkgreen",col.main="darkgreen",col.axis="darkgreen",col=rainbow(length(x)),abline(lm(orange$circumference~orange$age)))




# Plotting the scallterplot matrix 

pairs(~age+circumference,data=Orange,col.axis="darkgreen")

print(~Orange$age + Orange$circumference)




# Box plot

# Box plot shows how the data is distributed in the data vector. It represents five values in the graph, minimum, first quartile, second quartile(median),third quartile, the maximum value of the data vector


# Syntax : boxplot(x,xlab,ylab,notch)

# if notch is TRUE then creates notch on both the sides of the box

x <- c(42, 21, 22, 24, 25, 30, 29, 22,
       23, 23, 24, 28, 32, 45, 39, 40)


boxplot(x,xlab="Box Plot",ylab="Age",col.axis="darkgreen",col.lab="darkgreen")



# Advanced level of graph

#tm lirbrary


# tm library is for text mining infrastructure in R, managing, abstracting process of document manipulation

# easingg the usage of heterogreneous text formats in r 

# for text mining, nantural language processing, and corpus analysis

# EX: you can clean the text data, creaete term-document matrices, and analyze word frequenceis.


# word cloud enables the generation of word clouds , way to visualize the frequency of words in teh body of the text

install.packages("tm")
install.packages("wordcloud")

install.packages("NLP")
library(tm)
library(wordcloud)

comm <- read.csv(file.choose())
View(comm)
comm <- read.csv(file.choose(),header=TRUE)

install.packages("corpustools")
library(corpustools)

corpus <- Corpus(VectorSource(comm$Comments))
corpus
corpus[[1]][1]

# Clean the tet

# convert entire text into lower case

corpus <- tm_map(corpus,content_transformer(to_lowercase(x)))

to_lowercase<-function(s){
  return (tolower(s))
}


corpus <- tm_map(corpus,content_transformer(tolower))
corpus <- tm_map(corpus,content_transformer(function(x)iconv(x,"latin1","ASCII",
                                                             sub="")))



# GGPLots  

#components of ggplots

# grammar of graphics

# Data: the elment is the data set itself
# Aesthetics: is the attributes, such as x-axis, y-axis, color, fill, shape, labels, shape, width
# Geometrics: how our data being displayed bar, or plot, or histogram
# facets: displays the subset of the data using columns and rows
# Staticstics: Binning, smoothing, discriptive, intermediate
# coordinates: the space between data and display using cartesian, fixed, polar, limits
# Themes: Non-data link


install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
mtcars
library(dplyr)

ggplot(data = mtcars) +  # Adding a scatter plot layer
  labs(title = "MTCars Data Plot")

# giving aesthetics to perform any visualization

ggplot(data=mtcars,aes(x=hp,y=mpg,col=disp,size=disp))+geom_point()+labs(title="MTCars Data Plot",x="Horsepower",y="Miles per Gallon")


ggplot(data=mtcars,aes(x=hp,y=mpg,col=disp,size=disp))+
  geom_point()+
  labs(title="MTCars Data Plot",x="Horsepower",y="Miles per Gallon")



ggplot(data=mtcars,aes(x=hp,y=mpg,col=factor(cyl),shape=factor(am)))+
  geom_point()+
  labs(title="MTCars Data Plot",
       x="Horsepower",
       y="Miles per Gallon")



ggplot(data=mtcars,aes(x=hp))+
  geom_histogram(binwidth=5)+
  labs(title="MTCars Data Plot",
       x="Horsepower",
       y="Miles per Gallon")



# Facet Layer


p <- ggplot(data=mtcars,aes(x=hp,y=mpg,shape=factor(cyl)))+geom_point()

p+facet_grid(am~.)+ labs(title="Miles per Gallon vs Horsepower",x="Horsepower",y="Miles per Gallon")
mtcars

mtcars$cyl

p+facet_grid(. ~ cyl)+ labs(title="Miles per Gallon vs Horsepower",x="Horsepower",y="Miles per Gallon")
mtcars



# Statistics layer


# ggplot2 in R this layer, we transfor our data using binning, smooting, descriptive, intermediate

ggplot(data=mtcars,aes(x=hp,y=mpg))+
  geom_point()+
  stat_smooth(method=lm,col="red")+
  labs(title="Miles per Gallon vs Horsepower")


# coordinates layer

ggplot(data =mtcars,aes(x=wt,y=mpg))+
  geom_point()+
  stat_smooth(method=lm,col="red")+
  scale_y_continuous("Miles per Gallon",limits=c(2,35),expand=c(0,0))+
  scale_x_continuous("Weight",limits=c(0,25),expand=c(0,0))+
  coord_equal()+
  labs(title="Miles per Gallon vs Weight",x="Weight",y="Miles per Gallon")



# coord_cartesian() to proper zoom ini 

ggplot(data=mtcars, aes(x=wt,y=hp,col=am))+geom_point()+geom_smooth()+coord_cartesian(xlim=c(3,6))


# Theme Layer

ggplot(data=mtcars,aes(x=hp,y=mpg))+
  geom_point()+
  facet_grid(. ~ cyl)+
  theme(plot.background=element_rect(fill="white",colour="gray"))+
  labs(title="Miles per Gallon vs HorsePower")



# Contour plot for th mtcars dataset
ggplot(mtcars, aes(x = wt, y = mpg)) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon", color = "white") +
  scale_fill_viridis_c() + 
  labs(title = "2D Density Contour Plot of mtcars Dataset",
       x = "Weight (wt)",
       y = "Miles per Gallon (mpg)",
       fill = "Density") +
  theme_minimal()