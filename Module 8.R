#import DataSet
x <- read.table(file = '/Users/irenearias/Desktop/R-programming/DataSet.txt', header = TRUE, sep="," )

install.packages("plyr")
library(plyr)

#Generate the mean using plyer 
y = ddply(x, "Sex", transform, Grade.Average=mean(Grade))

#Print the new table to a file. Use sep to eliminate quotations  
write.table(y, "Sorted_Average", sep=",")

#Filter names with iI using the subset command 
newx =subset(x, grepl("i", x$Name))

#Write the subset to a file 
write.table(newx, "DataSubset", sep= ",")