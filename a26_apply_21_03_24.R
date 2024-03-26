# Mapply()

# multi variant version of sapply() 
# mapply() applies a function in parallel to the all elements 



# R program to illustrate 
# mapply() function 

# Creating a list 
A = list(c(1, 2, 3, 4)) 

# Creating another list 
B = list(c(2, 5, 1, 6)) 

# Applying mapply() 
result = mapply(sum, A,B) 
print(result) 


# Perform the same kind of activity with the multiple vectors



