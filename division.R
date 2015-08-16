# TODO: Add comment
# 
# Author: prhodes
###############################################################################


# R does a few weird things vis-a-vis division.  First, there's your bog standard
# division


# remember, this is vectorized, so we're diving each number from 1 to 10, by three
writeLines( toString( 1:10 / 3 ) )

# so, normal division returns a floating point number, as you might expect
# but what if you want integer division specifically?
writeLines( toString( 1:10 %/% 3 ))

# weird looking operator, but there ya go.  Integer
# division in R.

# and last, but not least, is the good old "remainder after division" operator
writeLines( toString( 1:10 %% 3 ))

