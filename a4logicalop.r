a <- 12 # logical true
b <- 0 # logical false

x <- c(TRUE, FALSE, TRUE)
y <- c(FALSE, TRUE, TRUE)
result <- x[1] && y[1]
print(result)
print(a&b)
print(a|b)
print(a&&b)
print(a||b)
# print(!a)