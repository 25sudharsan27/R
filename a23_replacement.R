# Replace the first match of a pattern from a string 

# sub(pattern, replacement,string,ignore.case=TRUE/FALSE)


x<- "Hello world hello"
sub("el","owe",x)


sub("hel","owe",x,ignore.case=FALSE)


sub("hel","owe",x,ignore.case=TRUE)
