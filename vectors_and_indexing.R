numbers <- 1:10
numbers

numbers + 5
2^numbers

#We can also create a vector with the c() function (c stands for concatenate)
concat <- c(4,17,-1,55,2)
concat

concat[-1]
concat[-2]
concat[0:-2]
concat[length(concat)]

concat[c(3,5)]
concat[c(3,5)] <- 76
concat
concat[9] <-123
concat

matrix_ex <- matrix(1:10,nrow=2,ncol=5)
matrix_ex

dim(matrix_ex)
length(matrix_ex)

matrix_ex[1,c(1,4,5)]

matrix_ex2 <- matrix(1:40,8,5)
matrix_ex2
