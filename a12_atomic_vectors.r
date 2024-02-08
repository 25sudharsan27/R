# types of atomic vector 
# logical, integer, double, character, complex, and raw


# integer

d <- as.integer(5)

e <- 5L

int_vec <- c(1,2,3,4,5)
int_vec <- as.integer(int_vec)
int_vec1 <- c(1L,2L,3L,4L,5L)
class(d)
class(e)
class(int_vec)
class(int_vec1)


#character vector
char_vec <- c (1,2,3,4,5)

char_vec <- as.character(char_vec)
char_vec1 <- c("sudharsan","subash","vijay","sharmila")
print(typeof(char_vec1))



# logical vector
d <-as.integer(5)
e = as.integer(6)
f = as.integer(7)
g<-d>e
print(g)



#indexing with a character vector

#we can assume our ownw index for an each string in the vector

cha <- c("sudharsan"=22,"sudharsan"=11,"subash"=10,"ramnaaath"=5)
print(cha)
print(cha["sudharsan"])
cha["subash"]=100



print(cha)


# c function also used to combine two vector

p <- c(1,2,3,4,5,6)
q <- c("subham","arpita","rishka","gunjan","vaishali","sumit")
r <- c(p,q)
print(r)



print(q[c(2,4,4,3)])

print(q[-2])

z=c("TensorFlow","Pytorch","Python")


names(z) <- c("Start","End")
z

z[c("End","Start")]


