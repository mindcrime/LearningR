# Arithmetic on arrays
# Filename: array_arithmetic.R
# Author: prhodes
###############################################################################


# standard arithmetic operators (+, -, \*, /) work element wise on matrices
# and arrays

A = matrix( 1:12, nrow=4 )
B = matrix( 12:1, nrow=4 )

C = A+B

print( C )

# the t() function transposes a matrix
T = t(A)

print( A )
print( T )

# R uses special operators for inner and outer matrix multiplication
M = matrix( 3:14, nrow=3 )
D = A %*% M

print( A )
print( M )
print( D )

P = c( 1:4 )
Q = c( 5:2 )

R = P %o% Q

print( R )

# you can also call outer() like this

R = outer( P, Q )

print( R )

# to get the inverse of a matrix, use solve()
m <- matrix( c( 1, 0, 1, 5, -3, 1, 2, 4, 7 ), nrow=3)
inverse_of_m = solve(m)

# a matrix times its inverse should give us the
# identity matrix, let's check
identity = m %*% inverse_of_m

print( identity )

# and don't forget, t() is transpose in R

t = t(m)

print( m )

print( t ) 







