#Generating the matrices 
A = matrix(c(2,0,1,3), ncol = 2)
B = matrix(c(5,2,4,-1), ncol =2) 

#Create a new matrix which represents the addition of matrix A and B 
C <- A + B 

#Create a new matrix which represents the substraction of matrix A and B 
D <- A - B

#Create a new vector 
E<-c(4, 1, 2, 3,)

#Contruct the diagonal of a matrix using the previous vector
diag(E)

#Generate 5 columns and bind them. 
cbind(c(3,2,2,2,2), c(1,3,0,0,0), c(1,0,3,0,0), c(1,0,0,3,0), c(1,0,0,0,3))