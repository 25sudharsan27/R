

a <- 7

if(a>10){
  print("A is greater than 10")
} else{
  print("A is not greater than 10")
}




b <- 4
a=1
i=1

while(b>0){
  a <- a*b
  b <- b - 1
}
print(a)


a <- 1234321
s<-a
b <- 0
p <- 0
while(a>0){
  
  v <- a %% 10
  b <- b + ( v * (10**p) )
  p <- p + 1
  a <- a %/% 10
}
print(b)

if(b==s){
  print("This number is palindrome number")
} else{
  print("This number is not an palindromic number")
}


c = 0
b = 1
a = 0

cond= 20

while(a<cond){
  print(a)
  c=a+b
  
  a <- b
  b <- c
  
}



# list of prime numbers

s <- 2

l <- 100

while(s<l){
  c<-0
  i<-2
  while(i < ( s %/% 2)+1){
    if( (s%%i) == 0){
      c <- c + 1
    }
    i <- i + 1
  }
  
  if(c ==0){
    print(s)
  }
  s <- s + 1
}


fruit <- c("Apple","Orange","Guava","Pinapple","Banana","Grapes")

for(i in fruit){
  print(i)
}


# 
# 1 5 3 10 29 30 4
# 
# 1 3 4 5 10 29 30

arr <- c(1,3,4,5,10,29,30)

first=1
last=7

target=29

c=0
mid=(first+last)/2
while(last>=first){
    if(arr[mid]==target){
      c <- c+1
      print(paste("Target value found in : ",mid))
      
      break
    }else if(arr[mid]>target){
            last=mid-1
            
    }else if(arr[mid]<target){
            first=mid+1
    }
    mid=(first+last)/2
}

print(arr[as.integer(mid)])



li <- list()
for (i in seq(1:5)){
  li[[i]]=i*i;
}

li


mat <- matrix(data=seq(10,21,by=1),nrow=6,ncol=2)

for(r in 1:nrow(mat)){
  for(c in 1:ncol(mat)){
    print(paste(" mat[",r,",",c,"]= ",mat[r,c]))
  }
 
  
   
}
print(mat)

c <-5
l <- array()
for(i in seq(1:5)){
  v <- 0
  for(j in seq(1:5)){
    
    if(j>=c){
      cat("*")
      v <- v+1
    }
    else{
      cat(" ")
    }
  }
  while(v>1){
    v <- v-1
    cat("*")
    
  }
  c <- c -  1
  cat("\n")
  
}
for(i in seq(5:1)){
  v <- 0
  for(j in seq(5:1)){
    
    if(j<c){
      cat("*")
      v <- v+1
    }
    else{
      cat(" ")
    }
  }
  while(v>1){
    v <- v-1
    cat("*")
    
  }
  c <- c -  1
  cat("\n")
  
}
l


# 
#      *
#     **
#    ***
#   ****
#  *****
# ******
# 
# 





