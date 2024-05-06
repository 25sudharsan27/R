View(Titanic)


data <-data.frame(Titanic)
data

library(sqldf)

da <- sqldf("select count(*) from data where Survived=='No'")
dat <- sqldf("select count(*) from data where Survived=='Yes'")

dead_count <- da$count

dead_count

alive_count <- dat$count

alive_count


ratio <- dead_count/alive_count
ratio



families <- (data$Class)
four_familes <- levels(families)

four_familes


# 3x3 matrix


mat1 <- matrix(c(1:9),nrow=3,ncol=3)
mat2 <- matrix(c(2:10),nrow=3,ncol=3)

mat1

mat2



mt <- mtcars


View(mt)

# with using sql query function

first <- sqldf("select mpg from mt where gear > 3 and cyl > 3")
first

library(dplyr)

?dplyr





ans <-subset(mt,cyl>3,gear>3)
ans
ans1 <- ans$mpg
ans1


?dplyr



library(dplyr)



ans2 <- filter(mt,gear>3 & cyl>3)


ans2 <- ans2$mpg
ans2




ans3 <- mt %>%
  subset(gear>3 & cyl >3)

ans4 <- ans3$mpg
ans4



df <- tibble(s.No = c(1:10) , Name = c("John","Smit" ,'Peter','Luke','King',rep(NA,5)))


df


# use  drop_na() to drop columns
df %>% drop_na(Name)
