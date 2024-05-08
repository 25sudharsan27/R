

first <- array(c(c("subash","ramnaath","divya"),c("asdfadsf","qrqewrqwa")))
fac <- factor(first)
levels(fac)



height <- c(132,162,152,166,139,147,122)
weight<-c(40,49,48,40,67,52,53)
gender <-c("male","male","female","female","male","female","male")

input_data<-data.frame(height,weight,gender)
print(input_data)
print(input_data$gender)
names(input_data)=c("column 1","column 2","column 3")
input_data

data<-c("Nishka","Gunjan","Shubham","Arpita","Arpita","Sumit","Gunjan","Shubham")

factor_data<-factor(data,c(1,2,3,3,4,5))

print(factor)



new_order_factor <- factor(factor_data,levels=c("Gunjan","Nishka","Arpita","Shubham","Sumit"))

print(new_order_factor)




