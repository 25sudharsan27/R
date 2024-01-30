# Micelleneous Operator


a <- 23.31

print(a)

a <- c(25,27,26)
b <- 27

# %in% denotes that b element is present in a or not

print(b %in% a)

#matrix(data = NA, N_row = 1, N_col = 1, byrow = TRUE (in the order of the rows it will add the elements ), dimnames = NULL)

M = matrix(c(1:12) , 4, 3 , FALSE)

#to multiply the both of the matrices we have to use %*%
print(M)
#print(M %*% t(M) )