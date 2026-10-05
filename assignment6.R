# Module 6 

A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A + B
A - B

# This part adds Matrix A and Matrix B together, then it also subtracts Matrix B from Matrix A. The values in the same position are either added or subtracted from each other.

D <- diag(c(4, 1, 2, 3))

D

# This part uses the diag() function to create a matrix with the values 4, 1, 2, and 3 going diagonally across the matrix. The other values are shown as 0.

M <- cbind(
  c(3, 2, 2, 2, 2),
  rbind(c(1, 1, 1, 1), diag(3, 4))
)

M

# This part uses the cbind() function to combine the values together to create the 5 × 5 matrix. The diag() function is used to place the values of 3 diagonally across the matrix.
