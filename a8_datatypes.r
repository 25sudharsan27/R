## Data Types

# List , Array , Vector , Matrix , Factor


# Vector
# Vector is a sequence of data elements of the same basic type
# There are 5 atomic vectors, also termed at 5 **classes** of vectors.
# It can be logical , integer(3L,4L) , numeric(3.1 , 2 , 4.12 ) , complex , character


# Matrix
#  A matrix is a two-dimensional rectangular data set.
#I can be created using a vector input to the matrix function.

# if you don't know any keyword in the r language you can just run this command 
# ? (keyword)

# List
# a list is an R- object which can contain different types of elements inside it like 
# funciton and another list inside it 

x <- list(c(1,2,3,4),'A',sin,TRUE)
print(x)
print(x[1])


# Array

# While matrices are confined to two dimensions, arrays can be of any number of 
# of dimensions. The array function takes a dim attribute which creates the required number of dimension.
?array
# dim = c(no of row, no of columns, no of times to print the matrix)


a = array ( c('orange','white','green'), dim=c(4,4,1) );
m = matrix(a)

print(t(m))
print(a)

cat(crayon::blue("Hi"))

# how to comment with shortcut (ctrl+shift+c)

# **Factors**
# Factors ar the r-object which are created usng a vector. It stores the vector alonog with the distinc
# values of the elements in the vector as lables.

# lables are always character irrespective of whether it is numeric or character or
#Boolean etc. in the input vector. They are useful in statistical model


# app = c('green','green','yellow','red','white','blue','blue')
# # in one level it will not store any duplicate values 
# # factor may accept any matrix or vector or array
# 
# app1= array(c(1,2,3,4,5))
# 
# print("\n")
# 
# fac_app= factor(app1)
# 
# print(fac_app)
# print(nlevels(fac_app))
# 
# 

# Data frames
# it is a tabular kind of data type, it contains same length of array or vectors with different data types according to user need
# most important each vector or array  should contains same length

# BMI = data.frame(gender=c("Male","Male","Female"),height=c(152,171.5,165),weight=c(81,93,78),Age=c(42,38,26))
# print(BMI)
# plot(c(1,2,3,5,6,7))
# plot(BMI)
# ?
# plot(3,400000)
# 
# data.table(BMI) 


# Type conversion as numeric
# as.numeric()
# as.integer()
# as.array()
# as.character()


# check whether it is data type or not
# is.numeric()
# is.integer()
# is.array()
# is.character()


print(as.integer("1234"))


