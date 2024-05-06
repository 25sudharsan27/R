# own example 

sample = data.frame(name=c("Subash","Naveen","Sudharsan"),field=c("IT","Non-IT","Non-IT"),salary=c(2000,3000,15000))

sample
field <- factor(sample$field,labels=c("IT","Non-IT"))
salary <- sample$salary

mean_salary <- tapply(salary,field,mean)
mean_salary
# tapply

store = data.frame(id=c(1,2,3,4),name=c("Sudharsan","Subash","Ramnaath","Divya"),marks=seq(20,35,5),section=c("A","B","A","B"))

store
id<- store$id

marks <- store$marks
marks
section <-factor(store$section,labels=c("Section a","Section B"))
section
mean_marks <- tapply(marks,section,mean)
mean_marks


a<- c(1,2,3)

a[[3]]
a[3]

install.packages("sqldf")

b <- matrix(c(1,2,3,4,5,6),nrow=3,ncol=2)
b


b


