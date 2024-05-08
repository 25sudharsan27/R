#Dataframes
d=data.frame("S.No."=c(1:5),"Rollno."=c(1140:1144),
             "Name"=c('A','B','C','D','E'))
d
str(d)
head(d)
d[1]=as.character(d[1])
str(d)
d$Name
d[["Name"]]
d[3]
d[1]=NULL
d["S.NO"]<-c(1:5)
d
d[c("Rollno.","S.NO")]
d[c(1,3,5),]
d[,c(T,F,T)]

