# Matrices
# Filename: matrices.R
# Author: prhodes
###############################################################################

# A matrix is just a special case of a two dimensional array.
# You can create a matrix by calling the matrix() function.

a_matrix = matrix( 1:12,
		nrow=4,
		dimnames = list( c( "one", "two", "three", "four" ), c( "ein", "zwei", "drei") ))

		   
print( class( a_matrix ))		   

print( a_matrix )


# matrices can also be created using the array() function (see: arrays1.R).  This
# two dimensional array is identical to the matrix above, and even has class "matrix".

two_d_array = array( 1:12,
					 dim = c(4,3),
					 dimnames = list( c( "one", "two", "three", "four" ), c( "ein", "zwei", "drei") ) )
			 
			 
print( class( two_d_array ))		   
			 
print( two_d_array )
			 

# when you create a matrix, the values are filled in column-wise. It is also possible to
# have them fill in row-wise by passing byrow=TRUE
by_row_matrix = matrix( 1:12,
		nrow=4,
		byrow=TRUE,
		dimnames = list( c( "one", "two", "three", "four" ), c( "ein", "zwei", "drei") ))

print( by_row_matrix )

