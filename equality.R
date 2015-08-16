# TODO: Add comment
# 
# Author: prhodes
###############################################################################
# writeLines( toString())

# to test integer values for equality use ==
writeLines( toString( 3 == 3 ))

# equality test is vectorized as well
writeLines( toString( 1:5 == 3 ))

# "not equals" is pretty standard.  !=
writeLines( toString( 1:5 != 3 ))

# and the lesser than / greater than stuff are all pretty standard
writeLines( toString( 1:5 < 3 ))
writeLines( toString( 1:5 > 3 ))
writeLines( toString( 1:5 <= 3 ))
writeLines( toString( 1:5 >= 3 ))


# but floating point equality isn't so easy.  But R has facilities to help manage
# that.

# you would expect this to return TRUE, but it doesn't due to floating point roundoff issues
writeLines( toString( sqrt(2)^2 == 2 ))

# to see the magnitude of the rounding error, subtract
writeLines( toString( sqrt(2)^2 - 2 ))

# all.equal provides a tolerance range for equality
writeLines( toString( all.equal( sqrt(2)^2, 2 ) ))

# when the numbers fall outside the tolerance range, 
# all.equal provides a report
writeLines( toString( all.equal( sqrt(2)^2, 3 ) ))

# to force that last call to return TRUE or FALSE specifically
# you must wrap it in a call to isTRUE
writeLines( toString( isTRUE( all.equal( sqrt(2)^2, 3 ) )))

# you can also test strings for equality with R
writeLines( toString(  c( "can", "you", "see", "this", "Can", "of", "beans") == "Can" ) )






