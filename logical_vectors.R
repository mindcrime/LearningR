# TODO: Add comment
# 
# Author: prhodes
###############################################################################


# there are three vectorized logical operators in R
# !  -- NOT
# &  -- AND
# |  -- OR

# make a vector of true and false values
(x <- 1:10 >= 5 )

writeLines(toString( !x ) )

# make another vector of true / false values
(y <- 1:10 %% 2 == 0 )

writeLines(toString( x & y ) )

writeLines(toString( x | y ) )

# truth table
x <- c(TRUE, FALSE, NA)
xy <- expand.grid( x = x, y =x )
within( xy, 
		{
			and 	<- x & y
			or  	<- x | y
			not.y	<- !y
			not.x	<- !x
			
		})

# the any() and all() functions are useful for working with vectors of logical values
none_true <- c( FALSE, FALSE, FALSE )
some_true <- c( FALSE, TRUE, FALSE )
all_true <- c( TRUE, TRUE, TRUE )

writeLines( toString( any( none_true ) ) )

writeLines( toString( any( some_true ) ) )

writeLines( toString( any( all_true ) ) )


writeLines( toString( all( none_true ) ) )

writeLines( toString( all( some_true ) ) )

writeLines( toString( all( all_true ) ) )




