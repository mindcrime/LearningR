# TODO: Add comment
# 
# Author: prhodes
###############################################################################
# writeLines( toString( ) )


# Here are some mathematical operators and functions in action.

# Trig function cos()

writeLines( toString( cos( c( 0, pi / 4, pi / 2, pi  ) )   ) )
writeLines("");

# Euler's formula

writeLines( toString( exp( pi * 1i ) + 1  ) )
writeLines("")

# Factorials

writeLines( toString( factorial(7) + factorial(1) - 71^2 ) )
writeLines("");

# ‘choose’ returns binomial coefficients. Note that ‘choose(n,k)’ is defined 
# for all real numbers n and integer k.  For k >= 1 it is defined as n(n-1)...(n-k+1) / k!, 
# as 1 for k = 0 and as 0 for negative k.
writeLines( toString( choose( 5, 0:5 ) ) )
