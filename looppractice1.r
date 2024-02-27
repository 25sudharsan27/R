a <- 1
while(a<10){
  print(a)
  if(a==5){
    break
  }
  a=a+1
}



for(i in c(2,4,6,8)){
  for(j in c(1,3)){
    if(j==6)
      break
    print(i)
  }
}

x <- switch(
  3,"Sudharsan","Nishka","Gunjan","Sumit")
print(x)
 
[
  [2,6,8,9,2],
  [0,0],
  [0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0],
  [0,0]
]






ax=1
bx=2
y=switch("3","1"="Hello, Shubham","2"="Hello Arpita","3"="Hello Vaishali","4"="Hello Nishka")


print(y)
x="2"
y="1"
a=switch(paste(x,y,sep=""),"9"="Hello Arpita","12"="Hello Vaishali","4"="Hello Nishka","21"="Hello Shubham")
print(a)


# Function creation

# function _name <- function(arg_1,args_2,...){
#  body or content which you want to perform with this argument
#  return c;
#}

rang <- function(a){
  for(i in 1:a){
    b <- i^2
    print(b)
  }
}
rang(10)


# 

rec <- function(n){
  if(n>0){
    print(n);
    rec(n-1);
    
   
  }
  else{
    print("Done");
  }
}

x <- function(a,b,c){
  if(b==0){
    b=1;
  }
  if(c>8){
    print("Done");
  }

  else{
    d=a+b
    print(d);
    c=c+1;
    x(b,d,c);
    
  }
  
}

x(0,0,0);


lazy = function(a,b=10){
  print(a*2)
  print(a)
  print(b)
}

lazy(6,5)



findevil=function(a){
  if(a%%2==0){
    print("This number is an even number")
  }
  else{
    print("This number is an odd number")
  }
}

findevil(2)

findarea=function(a){
  print(3.14*(a^2))
}

findarea(2)

findareaperimeter=function(l,b){
  print("Perimeter of the rectangle is")
  print(2*(l+b))
  print("Area of the rectangle is")
  print(l*b)
}
findareaperimeter(2,3)




