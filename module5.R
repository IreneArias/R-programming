#Create the matrices 
A <-matrix(1:100, nrow = 10)
B <-matrix(1:1000, nrow = 10)

#transpose A and B  - flipping the rows for its columns and viceversa  
t(A)
t(B)

#create two vectors, one for matrix A (vector a) and another for matrix B (vector b) 
a<-c(1:2)
b<-c(1:4)

#multiply the matrices by the vectors
C = a*A
D = b*B

#re assign vectors a and b to equal the number of rows of the column for the corresponding matrix 
a =c(1:10)
b =c(1:100)

#multiply the matrix by a matrix 
A %*%a
B&8&b

#inverse of the matrix 
S=matrix(2:5, nrow = 2)

#Check det 
det(S)





