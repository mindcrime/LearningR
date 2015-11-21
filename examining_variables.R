# TODO: Add comment
# 
# Author: prhodes
###############################################################################


ulams_spiral = c(1, 8, 23, 46, 77)
for( i in ulams_spiral )
{
	i # uh-oh, values aren't printed.
}

# inside a loop, must call print explicitly
for( i in ulams_spiral )
{
	print( i )
}

num = runif( 30 )
writeLines( toString( summary( num )))

fac <- factor(sample(letters[1:5], 30, replace=TRUE))
writeLines( toString( summary( fac )))

bool <- sample( c(TRUE, FALSE, NA ), 30, replace=TRUE )

writeLines( toString( summary( bool )))

dfr <- data.frame( num, fac, bool )

writeLines( toString( summary( dfr )))

View( dfr )
new_dfr <- edit(dfr)


print( "done" )