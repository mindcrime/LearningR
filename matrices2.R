# Rows, columns and dimensions
# Filename: matrices2.R
# Author: prhodes
###############################################################################


three_d_array <- array( 1:24, 
		dim = c(4, 3, 2 ),
		dimnames = list( c( "one", "two", "three", "four" ), 
				c( "ein", "zwei", "drei" ), 
				c( "un", "deux" ) 
		)
)

print( dim(three_d_array))

# for matrices, the functions nrow and ncol return the number of rows and columns
# respectively

a_matrix = matrix( 1:12, c(4,3))

print( class(a_matrix))
print( dim(a_matrix))
print( nrow( a_matrix))
print( ncol( a_matrix))

# length, when applied to an array/matrix, returns the product of the dimensions

print( length( three_d_array ))
print( length( a_matrix ))


# we can reshape a matrix or array by assigning new dimensions with dim.

dim(a_matrix) <- c(6,2)

a_matrix

# nrow, ncol and dim return NULL when applied to vectors.  NROW and NCOL
# pretend that vectors are 1 dimensional matrices (column vectors in the
# mathematical sense)

vec <- c( "one", "two", "three", "four" )
print( nrow( vec ))
print( ncol( vec ))
print( dim( vec ))
print( NCOL( vec ))
print( NROW( vec ))

# vectors can have names for their elements
names(vec) <- c( "A", "B", "C", "D" )
names(vec)

# you can access elements of a vector by name...
print( vec["A"] )

# similarly matrices have rownames and colnames for row and column names
a_matrix = matrix( 1:12, c(4,3), dimnames=list( c( "one", "two", "three", "four"), c( "A", "B", "C" )))

print( rownames( a_matrix ) )
print( colnames( a_matrix ) )

# dimnames returns both row and column names
print( dimnames( a_matrix ) )

# indexing arrays works just like it does with vectors, using square bracket notation.
# we just now have to specificy an index for more than one dimension

print( a_matrix[ 1, 2])

# you can specify the various indexes different ways
print( a_matrix[ 1, c(1, 2, 3)])

print( a_matrix[ 1, c( "A", "B", "C" )])

# to refer to an entire dimension, leave the corresponding index blank.
print( a_matrix[1,])

print( a_matrix[, c("A", "B" )])

# the c() function converts matrices to vectors before concatenating them.
another_matrix <- matrix(
		seq.int(2, 24, 2),
		nrow=4,
		dimnames= list( c( "five", "six", "seven", "eight"), c( "vier", "funf", "sechs" ) ))


print( another_matrix )

print( c( a_matrix, another_matrix ))

# more natural combinations can be achieved using cbind and rbind, which bind
# matrices together by column and row respectively.

print( cbind( a_matrix, another_matrix ) )

print( rbind( a_matrix, another_matrix ) )

