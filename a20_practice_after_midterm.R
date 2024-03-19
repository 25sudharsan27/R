d1=read.csv(file.choose())

View(d1)

install.packages("sqldf")

sqldf("select id,diagnosis_result,radius,symmetry from d1 where id < 10")
library("sqldf")


sqldf("select count(*) from d1")


