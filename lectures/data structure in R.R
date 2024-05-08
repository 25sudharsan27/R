#Inbuilt expression evaluation
exp(1)
cos(3.141593)
log2(1)
log(x=64, base=4)
log(64,4)
#Automatic equation solving
17 + 2
2 ^ 10
3 == 4
4 %% 3 == 0
x <- 1 + 2 + 3 + 4
x
as.Date("2023-01-12") + 7
print(paste0('addition: ',3+4,'Subtraction',5-2))
#Data Structures:
#1. Vector
b <- c(1,2,3,4,5,6,7,8,9,10,11,12)
b
# let's fetch the 7th item in vector b
b[7]
# fetch items 1 through 6
b[1:6]
# fetch only members of b that are congruent to zero (mod 3)
# (in non-math speak, members that are multiples of 3)
b[b %% 3 == 0]
# fetch 1, 6, 11
b[c(1,6,11)]
b[c(8,4,9)]

#2. Matrix
m= matrix(c(1:9),3,3)
x=10
y=20
cat('Addition=',x+y,"\n",'subtraction=',x-y,'\n','Multiplication=',x*y)
m=matrix(c(12,13,19,36,56,98,))
m
