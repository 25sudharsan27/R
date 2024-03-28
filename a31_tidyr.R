
# it has various methods to clean the data

library(tidyr)

n=10

tidy_dataframe = data.frame( 
  S.No = c(1:n),  
  key = c("a","b","c","d","e","f","H","G","et","u"),
  a.1 = c(23, 345, 76, 212, 88,  
              199, 72, 35, 90, 265), 
  a.2 = c(117, 89, 66, 334, 90,  
              101, 178, 233, 45, 200), 
  a.3 = c(29, 101, 239, 289, 176, 
              320, 89, 109, 199, 56)) 

# print the elements of the data frame 
tidy_dataframe 

#Syntax:        

#gather(data, key = “key”, value = “value”, …, na.rm = FALSE, convert = FALSE, factor_key = FALSE) 



long <- tidy_dataframe %>%
  gather(a,value,a.1:a.3)  # data,value it provides the value like string which is present coordinatly to the columns datas or key(it contains the frequency of the groups of value1 and value 2), value1,value2

long


# separate() fucntion : it converst longer data to a wider format.

# turn a singgle characdter coumn into multiple conlumns


#   separate(data, col, into, sep = ” “, remove = TRUE, convert = FALSE)


separate_data <- long %>% 
  separate(a,c("Allotment","Number"))

separate_data

# unite() function, merts two columsn in to one coulumns


# unite(data,col, ..., sep=" --",remove=TRUE)


long <- tidy_dataframe %>%
  gather (a,Frequency,a.1,a.3)


seperate_data <- long %>%
  separate(a,c("Allotment","Number"))

unite_data <- seperate_data %>% 
  unite(a,Allotment,Number,sep=".")

unite_data



# spread() function . 

# helps in reshaping a long format to wiider format. 
# spreads key-value parit acreoss multiple colus


#  spread(data,key,value,fill=Na, convert--false)

back_to_wide <- unite_data %>%
  spread(a,Frequency)

back_to_wide


# nest() function: 
# creates a list of data frames constaining all the nested vaiable.s

# nesting is implicity a summarizeng operation. this use ful in conjuunction with other summaries


# syntax: nest(data, ... , .key = "data")


df <- tidy_dataframe

df %>% nest(data=c(a.1))


df %>% unnest(a.1)
df


# fill() function

# used to fil lmissing values in selected colulmns using the previous entry

# missing values are replaced in atomic vectors. Null is replaced int eh list

# fill(data , ..., .direction = c("down),"up)


df <- data.frame(Month=1:6,
                 Year=c(2000,rep(NA,5)))

df

df %>%
  fill(Year)


# full_seq() function. fill the mising values in the vector which should have been ovserved butwe rn't .
# the vector should be numeric


# syntax full_seq(x,period or gap ,tol=1e-06)


library(tidyr)
num_vec<-c(1,7,9,14,19,20)

full_seq(num_vec,1)

# output
#[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16
#[17] 17 18 19 20


# drpo_na()

# this fucntion drops rows containing missing vlaues


# syntax drop_na (data,....)

df <- tibble(S.No = c(1:10),
             Name=c("John","Smith","Peter","Luke","King",rep(NA,5)))



df 

df %>% drop_na(Name)


# replace_na function it replaces missing vlaues

# syntax: replace_na (data,replace,..)


df <- data.frame(S.No = c(1:10),
          Name=c("John","Smith","Peter","Luke","King",rep(NA,5)))

df

df %>% replace_na(list(Name="Henry"))



