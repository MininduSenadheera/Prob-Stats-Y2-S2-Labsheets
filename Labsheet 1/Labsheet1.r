#creating a vector
Gender <- c(0,1,0,1,1,1,0,0)
#printing
Gender

#give the type of the vector
class (Gender)

#factorizing
Gender <- factor(Gender, c(0,1), c("male", "female"))
#printing
Gender

#give the type of the function
class(Gender)

#prints working directory
getwd()

#setwd() is used to set the working directory

#help can be use with ? or help()
help("solve")
?solve
help("data.frame")
?data.frame

#vector
p <- c(1,2,3,4,5,6,7,8,9,10)
p

q <- c("A","B","C")
q

#joining vectors
r <- c(p,q)
r

#display created variables
objects()

#list

#creating 3 vectors
k <- c(1,2,3,4,5)
n <- c("Achini","Amal","Dinul","Nayani")
m <- 100

#creating the list
Data_x <- list(k,n,m)
Data_x

class(Data_x)

#matrix
matrix_01 <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
matrix_02 <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = FALSE)

matrix_01
matrix_02

class(matrix_01)
class(matrix_02)

#Data frames
height <- c(10,20,30,40,50)
weight <- c(60,70,80,90,100)

data_set <- data.frame(height, weight)
data_set

class(data_set)

