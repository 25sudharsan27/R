# Finding the position of the matched pattern in a string in r programming 

# grep() function in R Language iis used to serach for mathes of a pattern within each element of the given string
# Syntax grep(patter, x)

x <- c("CFG",'gfg',"xyz","XYZ")

grep("gfg",x)
grep("xyz",x)

# IF YOU WANT TO IGNORE THE CASE OF THE STRING THEN YOU CAN GIVE IGNORE.CASE = FALSE

grep("gfg",x,ignore.case=FALSE)


# IF MULTIPLE ISTANCE WAS PRESENT IN THE VECTOR THEN MULTPIPLE VALUES WILL BE RETURNED

