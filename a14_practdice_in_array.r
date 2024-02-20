# Array is used to dstore more than two dimensional data 
# array() function takes a vector as an input and create an array it uses vector values in dim values


# array syntax arra_name <- array(data, dime=(row_size, column_size, matrices, dim_names))






vec1 <- c(1,3,5)
vec2 <- c(10,11,12,13,20,21,14,15)

# structure for dim is dim(row,column,no of times to print)


res <- array(c(vec1,vec2),dim=c(3,4,1))

names(res)=c("col1","col2","col3","col4")
res[2]


res1 <- array(c("Sudharsan","Subash","ramnaath","divya"),dim=c(2,2,2))
res2 <- array(c("name","name","name","name"),dim=c(2,2,2))

# to create the matrices from the arrays using [,,index of object]



mat1 <- res1[,,2]
mat2 <- res2[,,2]



mat1

mat2


# using apply functins
res

# in this apply unction it takes three arguments one is array and another one is to select the complete row of an array and thir d argument is to represent the math function to perform 
result <- apply(res,c(1),sum)
?c(1)

result

# creating data fraome

emp_data <- data.frame(employee=c(1:5),employee_name=c("Sudharsan","Subash","Magesh","Raamnath","Divya"),sal=c(34534,4535,5536,2345,6444),starting_date=as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),stringsAsFactors=FALSE)
emp_data

final <- emp_data[1,]

print(final)
final <- emp_data[4,5,]
print(final)


x <- emp.data

# Adding row in the data frame
x <- list(6,"VAishali",537,"2015-09-01")
emp_data=rbind(emp_data,x)

# Adding the column in the data frame
y <- c("Moradabad","Lucknow","Etah","Sambhal","Kurja")
emp_data=cbind(emp_data,Address=y)
emp_data
