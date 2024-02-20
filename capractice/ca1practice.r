
sample <- c(2,"sudharsan","subash",1,2,33)
sample

fa <- factor(sample,levels=c("subash","sudharsan",1,2,33))

levels(fa)
labels(fa)
fa


is.ordered(fa)


print(fa[c(2,1,3,4)])

# Access all except 4th element
print(fa[-4])
print(fa[c(TRUE,FALSE,TRUE,FALSE,TRUE)]);



levels(fa) <- c(levels(fa),c("this is first level","second","third"))
fa
levels(fa)

name <- c("sudharsan","subash","naveen","sharmila","divya")
age <- c(18,16,17,15,12)
gender <- c("male","male","male","female","female")

fram<- data.frame(name,age,gender)

fram
print(is.factor(fram$gender))


# Generating factor levels

s <- gl(3,5,labels = c("A","B","C"))
s


labels(s)

a <- c(1,2,NA,4,5)
b <- c(6,NA,8,9,10)

a+b


c <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3);
c


c <- list(c(1,2,3,4),c(5,6,7,8))

names(c)=c("first","second")

c["first"]
c[1]<- NULL

c[1]

b <- unlist(c)
b

c<- matrix(c(1,2,3,4),nrow=2,ncol=2)
b <- matrix(c(2,3,4,5),nrow=2,ncol=2)
s <- c+b

s

class(c)
s <- c(1:6)
typeof(s)
s[9]
