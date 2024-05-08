{
  prime <- function(n)
  {
    for(i in 2:(n/2)){
      if(n%%i==0){
        return(F)
      }
    }
    return(T)
  }
  while(TRUE){
    n = as.integer(readline("Enter a no.: "))
    if(prime(n)){
      break
    }
  }
	row_names = c("row1", "row2", "row3", "row4")  
  	col_names = c("col1", "col2", "col3")  
  	  
  	R <- matrix(c(5:16), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))  
  	print(R)  
  
  s = 0
  for(i in 2:n){
    if(prime(i)){
      s = s + (i*i)
    }
  }
  print(s)
}

# Function to print prime numbers up to a given limit
print_primes <- function(limit) {
  primes <- c()
  for (i in 2:limit) {
    if (is_prime(i)) {
      primes <- c(primes, i)
    }
  }
  print(primes)
}


data3 = scan()

d1=read.csv("F:/LPU/Session Jan 2024/R Material/R/R/bestsellers1.csv")
d1
View(d1)
getwd()
d2=read.csv("bestsellers1.csv")
View(d2)
d3=read.csv(file.choose())
View(d3)
library(readxl)
d4=read_excel(file.choose())
View(d4)


	year1 = 2024  
	if(year1 %% 4 == 0) {  
  	 if(year1 %% 100 == 0) {   
    	     if(year1 %% 400 == 0) {   
      	         cat(year1,"is a leap year")   
      	        } else {  
      	         cat(year1,"is not a leap year")   
        	        }  
       } else {  
    	     cat(year1,"is a leap year")   
    	    }  
  	} else {  
     cat(year1,"is not a leap year")   
    }  

	
		a<- 'u'  
		if(a=='a'||a=='e'||a=='i'||a=='o'||a=='u'||a=='A'||a=='E'||a=='I'||a=='O'||a=='U'){  
	 	    cat("character is a vowel\n")     
	  	}else{  
	    	    cat("character is a constant")  
	    	}  
		cat("character is =",a)  
		 
  
df<- datasets::iris
head(df)
#importing the dataset
df<-datasets::iris

#returns first n rows of the data
head(df)
#importing the data
df<-datasets::airquality

#returns first 10 rows
head(df,n=10)
#importing the data
df<-datasets::mtcars

#returns first 10 values in column 'mpg'
head(mtcars$mpg,10)

#importing the dataset 
df<-datasets::airquality

#returns last n rows of the data
tail(df)
#importing the data
df<-datasets::airquality

#returns the last 10 values 
tail(df,10)
#importing the data
df<-datasets::mtcars

#returns the last 10 values of column 'mpg'
tail(mtcars$mpg,10)

d5=read.csv(file.choose())
View(d5)
