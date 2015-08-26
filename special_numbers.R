# TODO: Add comment
# 
# Author: prhodes
###############################################################################


# R provides four "special number"  Inf, -Inf, NaN, and NA, for
# positive and negative infinity, "Not a Number" and "Not Available", respectively

writeLines( toString( c( Inf +1, Inf -1, Inf - Inf ) ) )

writeLines( toString( c( 1/Inf, Inf/1, Inf/Inf ) ) )

writeLines( toString( c( NA +1, NA * 5, NA + Inf ) ) )

# when arithmetic involves both NA and NaN, the answer will be
# one of those, but the actual value is system dependent
writeLines( toString( c( NA + NA, NaN + NaN, NaN + NA, NA + NaN ) ) )

# there are functions available to check for these special numbers
x <- c( 0, Inf, -Inf, NaN, NA )
writeLines( toString( is.finite(x) ) )

writeLines( toString( is.infinite(x) ) )

writeLines( toString( is.nan(x) ) )

writeLines( toString( is.na(x) ) )


