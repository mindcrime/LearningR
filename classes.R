# TODO: Playing with classes
# 
# Author: prhodes
###############################################################################

writeLines( class( c( TRUE, FALSE )))

# should be numeric
writeLines( class (sqrt(1:10)))

# i for imaginary numbers
writeLines( class( 3 + 2i))

writeLines( class(1))

# force to integral type
writeLines( class(1L))

# colon operator returns numeric types
writeLines( class(0.5:4.5))

# unless all the arguments are whole numbers
writeLines( class(1:5))

# get details about the internals of types and what-not
.Machine





