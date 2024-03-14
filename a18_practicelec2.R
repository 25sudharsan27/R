# 12215949_SUDHARSAN B

# parwinder.29695@lpu.co.in

# name of the columns 
# Pregnancies Glucose BloodPressure SkinThickness Insulin  BMI
# 
# DiabetesPedigreeFunction Age Outcome





d <- read.csv("D:/College/Semester 4/R/diabetes.csv")


d
head(d,n=10)
tail(d,n=10)

# Finding the mean of the pregnancies

pregnance <- d["Pregnancies"]
sum_of_pregnance <- sum(pregnance)


mean_pregnance <- sum_of_pregnance / count
mean_pregnance


# Finding the mean of the Glucose

glucose <- d["Glucose"]
sum_of_glucose <- sum(glucose)

mean_glucose <- sum_of_glucose /count

mean_glucose

# Finding the mean of the BloodPressure 

blood <- d["BloodPressure"]
sum_of_blood <- sum(blood)
mean_of_blood<- sum_of_blood /count
mean_of_blood


#Finding teh mean of the SkinThickness 

skin <- d["SkinThickness"]
sum_of_skin <- sum(skin)
mean_of_skin <- sum_of_skin/count
mean_of_blood


# find the mean of the Insulin

insulin <- d["Insulin"]
sum_of_insulin <- sum(insulin)
mean_of_insulin <- sum_of_insulin/count
mean_of_insulin

# Finding the mean of the BMI

bmi <- d["BMI"]
sum_of_bmi <- sum(bmi)
mean_of_bmi <- sum_of_bmi /count
mean_of_bmi
median(bmi)



i=1
ncol(d)
c <- median(d[2])
c

d <- read.csv("D:/College/Semester 4/R/Prostate_cancer.csv")


i=1

count <- nrow(d)

while(i<=ncol(d)){
  c <- d[i]
  sum_ <- sum(c)
  mean_ <- sum_ /count
 
  print(paste("Mean  of ",colnames(c)," : ",mean_))
  pregnencies=d1[1]
  print(paste("Min of  ",colnames(c),min(c)))
  print(paste("Max of ",colnames(c),max(c)))
  print(paste("Median of",colnames(c), median(as.numeric(unlist(c)))))
  
  print("------------------------------------------------------------")
  i=i+1
}



i=1


count <- nrow(d)

while(i<=ncol(d)){
  c <- d[i]
  max_ <- max(c)
  max_
  
  print(paste("Max  of ",colnames(c)," : ",max_))
  
  i=i+1
}


i=1


count <- nrow(d)

while(i<=ncol(d)){
  c <- d[i]
  min_ <- min(c)
  min_
  
  print(paste("Min  of ",colnames(c)," : ",min_))
  
  i=i+1
}


nrow(d)
ncol(d)








d <- read.csv("D:/College/Semester 4/R/Prostate_cancer.csv")

head(d,n=10)
tail(d,n=10)

d

i=1

count <- nrow(d)

while(i<=ncol(d)){
  if(i!=2){
    c <- d[i]
    sum_ <- sum(c)
    mean_ <- sum_ /count
    
    print(paste("Mean  of ",colnames(c)," : ",mean_))
    pregnencies=d1[1]
    print(paste("Min of  ",colnames(c),min(c)))
    print(paste("Max of ",colnames(c),max(c)))
    print(paste("Median of",colnames(c), median(as.numeric(unlist(c)))))
    
    print("------------------------------------------------------------")
    i=i+1
  }
  i=i+1
  
}



d <- read.csv("D:/College/Semester 4/R/Prostate_cancer.csv")

age<- c(5,2,55,2,73,4,7,43,2,9)

d<-cbind(d,age)
d


d <- subset(d, select = -texture )
d


# 1^2 + 2^2 = 2^2 + 1^2 

install.packages("sqldf")
library("sqldf")
