# Handling Missing values in r programming


# Assign missign elements as NaN or NA


# to find the mssing value  we use is.na


X <- c(0/0,3,4,NA,NA,NA)

is.na(X)
is.nan(X)
# nan will not work in this manner

df <- data.frame(c1=1:8 , c2=factor(c("B","A","B","C","A","C","B","A")))

df[4,1]<- df[6,2] <- NA
df
levels(df$c2)

#fails if NA is encontered

na.fail(df)

na.exclude(df)

# it removes row data if any NA is available in the row



install.packages("visdat")
library(visdat)

data <- data.frame(A=c(1,NA,3,NA,5),
                   B=c(NA,2,NA,4,NA),
                   C=c(1,2,3,NA,NA))

vis_miss(data)
install.packages("imager")

library(imager)

xy <- load.image("vds9S.png")
head(as.data.frame(xy))

x<-c(NA,3,4,NA,0/0,NA)
is.nan(x)

# if youwant to remove the not available dataes you can use this method

d<- is.na(x)
d
y <- x[d]
is.nan(y)


# missing value filter functiosn

# na.omit  omit every row containing even one NA
# na.fail
# na.exclude
# na.pass

df <- data.frame(c1=1:8 , c2=factor(c("B","A","B","C","A","C","B","A")))

df[4,1] <- df[6,2] <- NA

levels(df$c2)

na.fail(df)

na.pass(df)
na.omit(df)
na.exclude(df)
