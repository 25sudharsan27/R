# Install and lead a new pakcage


# install directly from cran

# by just using install.packages("package name")


# sample install.packages("XML")

# Go to install option in the packages and then write the name of the package yoiu want to instsall

# Leading the package
# Library(package name)


# library(pacage namee) it show the pakcage is already present in the system or not


library()

install.packages("png")

library("png")
k=getwd()

install.packages("csv")
d1=read.csv("D:/College/Semester 4/R/Book1.csv")
d1
View(d1)
# View() is to view the readed csv, V must be capital in view()


# getwd() is to get the working directory 
# if your are storing the getwd() in the other variable it will behave as a scaning input in the terminal


a<-getwd()

d1=read.csv(file.choose())

View(d1)
install.packages("readxl")
library(readxl)

install.packages("sql")
install.packages("read_excel")

d4=read_excel("D:/College/Semester 4/R/Book1.xlsx")

data <- read.csv("D:/College/Semester 4/R/Book1.csv")

print(is.data.frame(data))
print(ncol(data))
print(nrow(data))

# Get the person detail Having max salary



retval <- subset(data,age==max(age))
print(retval)


sqldf("select [name],[age],[secton] from data")
install.packages("sqldf")
