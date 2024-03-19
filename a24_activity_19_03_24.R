# Activity date 19/3/2024


install.packages("readcsv")
library("readcsv")

d1=read.csv(file.choose())


View(d1)


install.packages("sqldf")
library("sqldf")
sqldf("SELECT * FROM d1 limit 10")
sqldf("select Admission_Type , Test_Results from d1 limit 10")

# Sum of all billing amounts

sqldf("select sum(Billing_Amount) as 'Profit' from d1")

sqldf("select Name, Billing_Amount, Room_Number from d1 where Name like 'R%' limit 10")


sqldf("select name,Medical_Condition,Billing_Amount from d1 where Billing_Amount == (select max(Billing_Amount) from d1) ")


sqldf("select name,Medical_Condition,Billing_Amount from d1 where Billing_Amount == (select min(Billing_Amount) from d1) ")


# It is used to help you examine the structur of data object


x=read.csv(file.choose())
str(x)
x

d <- c(1,2,3,4,5)
str(d)

d

y<-1
str(y)


# Summary() it is designed to give a quick statistical summary of data objects
# Example median mean average max min for every column it will be there

summary(x)


# toupper and to lower

name1 <- "sudharsan"
name2 <- "SUBASH"

toupper(name1)
tolower(name2)


# Apply Family of Functions

# allow us to manippulate data frames, arrays, matrices, these functions are altnerative to the loops . 
# more efficient that loops as functions are faster at the execution level.
# these functions reuce the need for explicity cretaing a loop in R. Follow the is the list of functiosn that are a part of the apply familiy


# Apply()

# apply(X, Margin, Fun, ....)

# X is an array or a matrix if the dimensiton of the array is 2
# margin is a variable hwo functiono can be applied. ex:: MARGIN=1, it applies over rows , whereas with MARGIN=2, over columns.
# Your can use like this also MARGIN=C(1,2) it applies to both rows and columns

z= matrix(c(1,2,3,4),nrow=3,ncol=4,byrow=TRUE)
z

# Row wise 

z1 <- apply(z,1,sum)

# Column wise
z2 <- apply(z,2,sum)
# printing the values 
z1
z2



z2 <- apply(z,2,sub)


# Lapply() the lapply takes a list as an argument and applies a function to each element fo the list by 

# lapply() function is used to perform operation in the list 

a<- list(A = c(8,9,7,5) , B=data.frame(x=c(1:5),y=c(5,1,0,3,4)) )

a

lapply(a,sum)

# Example to use our own created fucntion in lapply(

d <- 1:3
fun <- function(x){
  x^2
}

lapply(d,fun)

# Sapply is same as the apply, one of the differnce is in the output


# if the result is a list with each element of the length unity,a vector will be returned.

# sapply(X,FUN,...,simplify=TRUE,USE.NAMES=TRUE)


sapply(1:4,sqrt)

# Another exampel of the sapply

fu <- function(x){
  x^2
}


out <- numeric(10)
for (i in 1:10){
  out[i]<- sapply(i,fu)
}
out

# another exsample of sapply

List <- list(A=1:5,B=6:20,C=1)
sapply(List,length)


