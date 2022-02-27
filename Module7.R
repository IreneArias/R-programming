# Load data set
datasets::ldeaths

#Play around with different generic functions 
plot(ldeaths)
summary(ldeaths)
mean(ldeaths)

#Create a S3 class for my dataset
totalPerYear <- list(year= "1974", total = "26, 158")
class(totalPerYear) <- "total"


#Create a S4 class 
setClass("totalDeaths", year = "1974", month= "Jan",  deaths = "3035" )
