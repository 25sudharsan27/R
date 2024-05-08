"
By limiting the choices the focus can now 
be more on data manipulation difficulties.
There are uncomplicated 'verbs', functions present for 
tackling every common data manipulation and the thoughts 
can be translated into code faster.
There are valuable backends and hence waiting time 
for the computer reduces.
""" 
library(help = "datasets")

install.packages("dplyr")
library(dplyr)
# Create a data frame with missing data
d <- data.frame(name=c("Ab", "B",
                        "C", "D"),
                 age=c(7, 5, 9, 16),
                 ht=c(46, NA, NA, 69),
                 school=c("yes", "yes", "no", "no"))
d
# Finding rows with NA value
d %>% filter(is.na(ht))

# Finding rows with no NA value
d %>% filter(! is.na(ht))
d %>% filter(ht>60)
# Arranging name according to the age
d.name<- arrange(d, age)
print(d.name)
# startswith() function to print only ht data
select(d, starts_with("ht"))
select(d, ends_with("ool"))

# -startswith() function to print
# everything except ht data
select(d, -starts_with("ht"))

# Printing column 1 to 2
select(d, 1: 2)

# Printing data of column
# heading containing 'a'
select(d, contains("a"))

# Printing data of column
# heading which matches 'na'
select(d, matches("na"))
# Calculating a variable x3 which is sum of height
# and age printing with ht and age
mutate(d, x3 = ht + age)

# Calculating a variable x3 which is sum of height
# and age printing only x3
transmute(d, x3 = ht + age)


# Calculating mean of age
summarise(d, mean = mean(age))

# Calculating min of age
summarise(d, med = min(age))

# Calculating max of age
summarise(d, med = max(age))

# Calculating median of age
summarise(d, med = median(age))


# Printing three rows
sample_n(d, 3)

# Printing 50 % of the rows
sample_frac(d, 0.50)


