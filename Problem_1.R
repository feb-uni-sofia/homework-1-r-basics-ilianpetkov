## NOTE: readability: leave some blank linkes between the code to make it more readable

## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.

# a)
x <- c(4,1,1,4)
# b)
y <- c(1,4)
# c)
Difference <- x - y # it subtracted the numbers elementwise but as a set of two :  first 4,1 - 1,4 giving us 3,-3 and then 1,4 - 1,4 giving us 0,0
## i.e. the shorter vector 'y' gets recycled.
x - y
## is equivalent to
x - rep(y, 2)

# d)
s <- c(x, y)
# e)
rep(s,10) 
length(rep(s,10))
# f)
rep(s, each = 3)
# g) 
seq(7, 21, by=1)
7:21
# h)
length(7:21)
