#Install and load the required packages 
install.packages("lattice")
install.packages("ggplot2", dependencies = TRUE)
library(lattice)
library(ggplot2)


#Load the CSV datset selected. 
Phd_publications <- read.table(file = '/Users/irenearias/Desktop/R-programming/PhDPublications.csv', header = TRUE, sep="," ) [,2:7]

#Plot the data using the box plot built-in function 
par(mfrow=c(1,1))
boxplot(Phd_publications$articles~Phd_publications$gender, col = "orange", main = "PhD Publications", xlab = "gender", ylab = "articles")

boxplot(Phd_publications$prestige~Phd_publications$articles, col = "green", main = "PhD Publications", xlab = "Articles", ylab = "Prestige")
par(mfrow=c(1,1))

#Plot the data using the lattice package bwplot function 
xyplot(kids ~ articles, data = Phd_publications, grid = TRUE)

#Plot the data using ggplot 
ggplot2::ggplot(Phd_publications, ggplot2::aes(x=mentor, y=articles)) + ggplot2::geom_point()

