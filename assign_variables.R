# TODO: Add comment
# 
# Author: prhodes
###############################################################################

# We can assign to variables using two different bits of syntax
y <- 1:5
x = 6:10

# when looking at the output, remember, vectorization
writeLines( toString( x + 2 * y - 3 ) )

# what happens if we add a scalar value to a vector? Or will R
# even let us do that?
writeLines( toString( y + 14  ))

# we can also assign to global variables
xyz <<- "This is a string"

# or assign using the assign method
assign( "my_local_variable", 9^3 + 10^3 )

writeLines( paste( "my_local_variable: ", my_local_variable ))

# you can also assign a global variable this way
assign( "my_global_variable", 9^4 + 10^2, globalenv() )

writeLines( paste( "my_global_variable: ", my_global_variable ))

# if we want to see the value of an assignment, we can wrap the
# statement in parenthesis.

(zz <- rlnorm(5))

# or use print or writeLines
print( zz )

