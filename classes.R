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

# characters, too!
writeLines( class( c( "She", "sells", "seashells", "on", "the", "shore")))


gender <- factor( c( "male", "female", "female", "male", "female" ))

# factors for storing categorical data
writeLines( toString( gender ) )
writeLines( class( gender ))
writeLines( levels(gender))
writeLines( toString( nlevels(gender) ))
writeLines( toString( as.integer(gender) ))

# look at the size difference between a vector of characters and a vector of facors
gender_char <- sample( c( "female", "male"), 1000, replace = TRUE)
gender_fac <- as.factor( gender_char )

writeLines( toString( object.size(gender_char)))

writeLines( toString( object.size( gender_fac )))

# raw for raw bytes (in hex)
writeLines( toString( as.raw( 1:17 ) ) )


