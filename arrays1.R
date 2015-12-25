# Arrays
# Filename: arrays1.R
# Author: prhodes
###############################################################################


# to create an array you call the array() function, passing in a vector
# of values and a vector of dimensions.  Optionally, you can provide
# names for the dimensions.


three_d_array <- array( 1:24, 
						dim = c(4, 3, 2 ),
						dimnames = list( c( "one", "two", "three", "four" ), 
										 c( "ein", "zwei", "drei" ), 
										 c( "un", "deux" ) 
						 				)
						)

print(three_d_array)

print( "----------")

print( three_d_array["one",,])


print( "----------")

print( three_d_array[,"zwei",])

print( "----------")

print( three_d_array[,,"deux"])

# you can also access elements by the numeric index of their dimension

print( "----------")

print( three_d_array[3,,])

print( "----------")

print( three_d_array[,2,])

print( "----------")

print( three_d_array[,,1])

print( "----------")

print( three_d_array[4,2,1])

print( "done" )

						