## NOTE: readability: leave some blank linkes between the code to make it more readable

# a)
xmin <- c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
xmax <- c(25.0,22.8,31.2,27.3,28.4,20.2,24.1)

# b)
TempDifference <- xmax - xmin

# c)
AvgMin <- mean(xmin)
totalxmax <- sum(xmax)
AvgMax <- totalxmax/length(xmax)

# d)
xmin [xmin<AvgMin]

# e)
xmin [xmax>AvgMax]

# f)
## Nice
dateNames <- c('01Mon18', '02Tue18', '03Wed18', '04Thu18', '05Fri18' , '06Sat18' , '07Sun18')
names(xmin) <- dateNames

names(xmax) <- dateNames
# g)
temperatures <- data.frame(
  df.dateNames = dateNames,
  df.xmin = xmin, 
  df.xmax = xmax,
  df.TempDifference = TempDifference
)
temperatures
length(temperatures)

# h)
## Improve readability
temperatures <- within(temperatures, {
	xminFahrenheit<-(9/5)*df.xmin + 32
})
temperatures

# i)
xmaxFahrenheit <- (9/5)*xmax + 32
xminFahrenheit <- (9/5)*xmin + 32
TempDifferenceF <- xmaxFahrenheit - xminFahrenheit

temperaturesF <- data.frame(
  df.dateNames = dateNames,
  df.xmin = xminFahrenheit, 
  df.xmax = xmaxFahrenheit,df.TempDifference=TempDifferenceF)
  
temperaturesF

# j)
#1)
temperaturesF[c(1,2,3,4,5),c('df.dateNames','df.xmin','df.xmax','df.TempDifference')]

#2)
temperaturesF[c(-6,-7),c('df.dateNames','df.xmin','df.xmax','df.TempDifference')]

## Better:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]
