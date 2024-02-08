# list is the objects of the r programming and we can insert multiple numbber of vectors inside it with different datatypes of each vector


vec = c(1,2,3,4)
chas = matrix(c("Sudharsan","Subash","Ramnaath","Divya"),ncol=1,nrow=4,byrow=TRUE)
study= c(1L,2L,3L,4L)
chas = as.data.frame(chas)
names(chas)=c("Name")
?matrix


val = list(vec,chas)
names(val)=c("S.no","Name")

# We can access 

val$S.no
val$Name

dat =data.frame(val);

dat

pdata.frameprint(val)
print("We are going to print the first vector in the list")
print(val[1])
print("We are going to print the character in the list")
print(val[2])
print("We are going to print the integer type of the vector in the list")
print(val[3])


?list


print(val[4])
# 
# Extra 

new = list(100,345,63,764,13,43,10)
print(new)


# we can able to give a unique name for each element in the list by using names() function

names(new)=c("Subject 1","Subject 2","Subject 3","Subject 4","Subject 5","Subject 6","Subject 7")



new
print(new["Subject 2"])



?matrix
d=c(1,2,3,4,5,6,7,9,10)


a = matrix(data=c(1,2,3,4,5,6,7,8,9,10),nrow=2,ncol=5,byrow=TRUE)

a
names(a)=c("column 1","Column 2","Column 3","Column 4","Column 5")

a["column 1"]
a["Column 2"]
a["Column 3"]


