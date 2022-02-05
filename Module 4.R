# First I declare the data vectors based on the type of data it has. 
freq<-c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <-c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <-c("bad", "bad","bad", "bad", "good", "good", "good", "good","NA", "bad")
second <-c("low", "low", "high", "high", "low", "low", "high", "high", "high", "high")
FinalDecision <-c("low", "high", "low", "high", "low", "high", "low", "high", "high", "high")

#Generate a data frame based on the vectors that were previously defined 
info.df<- data.frame(freq, bloodp, first, second, FinalDecision)

#Generate the boxplots 
par(mfrow=c(1,2))
boxplot(info.df$bloodp~info.df$first, col = "orange", main = "MD Ratings of Blood Pressure", xlab = "1st MD rating", ylab = "Blood Pressure")
boxplot(info.df$bloodp~info.df$second, col = "green", main = "MD Ratings of Blood Pressure", xlab = "2stMD rating", ylab = "Blood Pressure")
par(mfrow=c(1,1))

#Generate the histogram
hist(info.df$bloodp, main = "Patients blood Pressure", xlab = "Blood Pressure", ylab = "frequency")


#Decided to do another data set for the same information, but using bad=1, good=0, low=0, high=1
freq2<-c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp2 <-c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first2 <-c(1, 1, 1, 1, 0, 0, 0, 0,"NA", 1)
second2 <-c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision2 <-c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

#Generate new data frame 
info2.df <- data.frame(freq2, bloodp2, first2, second2, FinalDecision2)

#Generate new boxplots 
par(mfrow=c(1,2))
boxplot(info2.df$bloodp2~info2.df$first2, col = "orange", main = "MD Ratings of Blood Pressure", xlab = "1st MD rating", ylab = "Blood Pressure")
boxplot(info2.df$bloodp2~info2.df$second2, col = "green", main = "MD Ratings of Blood Pressure", xlab = "2stMD rating", ylab = "Blood Pressure")
par(mfrow=c(1,1))

#Generate new histogram 
hist(info2.df$bloodp2, main = "Patients blood Pressure", xlab = "Blood Pressure", ylab = "frequency")

