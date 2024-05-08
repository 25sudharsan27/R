 list_data <- list(c("Sudharsan","ramnaath","Subash","Divay"),c(1,2,3,4),c("A","B","C","D")) 
 names(list_data)=c("Names","Serial Number","Grade")
 d=as.data.frame(list_data)
d
c= matrix(d)
c[1]
c[2] 
c[3]


# to unlist a list to convert into vector


l <- list(10:20)
u <- list(20:30)
vec <- unlist(l)
vec1 <- unlist(u)
l
u
class(vec
      )
class(vec1)
v <- vec + vec1
v

# Merging the two lists

merge = list(l,u)
merge

# Arranging elements sequetially by row

P <- matrix(c(5:16),nrow=4,byrow=TRUE)
print(P)

# Arranging elements sequentially 

Q <- matrix(c(3:14),nrow=4,byrow=FALSE)
print(Q)

#Defining the columns and row names

row_names=c("row1","row2","row3","row4")
col_names=c("col1","col2","col3")
R <- matrix(c(3:14),nrow=4,byrow=TRUE,dimnames=list(row_names,col_names))

# Accessing elements in the matrix by using x and y coordinates in the matrxi

R[1,2]

R

# Replacing the elements in the matrix which is having value is greater than 12 then it become 0

R[R>12]=0
R

# cbind() is to add column and rbind() is to add row in the matrix 
R = rbind(R,c(16,17,18))
R
R = cbind(R,c(1,2,3,4,5))
R

# t(R) is to do transport of the matrix
t(R)
