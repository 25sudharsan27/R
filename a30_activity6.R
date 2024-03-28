
library(readr)
df<- read_csv("D:/College/Semester4/R/lectures/depress/adult-depression-lghc-indicator-2.csv")

df

View(df)

df$`Weighted Frequency`

is.na(df$`Weighted Frequency`)

result <- df %>%
  filter(Year == 2012 & Strata =="Education")
View (result)


result <- df %>%
  filter(Temp > 70 & Month ==6  )
air=mutate(air,TEMPINC=(Temp-32)*5/9) # to change or modify the particular or group of data by doing some manipulaitons
help("airquality")
summarise(air,"Mean"=mean(Temp,na.rm=T))
summarise(group_by(air,Month),mean(Temp,na.rm=T))
summarise("Count no of data is present : ",count(air,Day))

View(result) 


df

na.exclude(df)

library(vsdata)


library(visdat)

vis_miss(df)


