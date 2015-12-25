# Using the more advanced looping constructs
# Filename: advanced_looping.R
# Author: prhodes
###############################################################################

# plain old "rep" to repeat something n times
rep( runif(1), 5 )
rep( runif(1), 15 )
rep( "this", 7)

# and then there's replicate() which actually invokes the function each time, etc.
# often used for something like Monte Carlo analysis
replicate( 5, runif(1))
replicate( 15, runif(1))

# given a moderately complex function...

time_for_commute <- function()
{
	# choose a mode of transport for the day
	mode_of_transport <- sample(  c( "car", "bus", "bike", "train"), size=1, prob = c( 0.1, 0.2, 0.3, 0.4) )
	
	# Find the time to travel, depending upon mode of transport
	time <- switch( mode_of_transport, 
				car = rlnorm( 1, log(30), 0.5 ),
				bus = rlnorm( 1, log(40), 0.5),
				train = rnorm( 1, 30, 10 ),
				bike = rnorm( 1, 60, 5 )
			)
	
			names(time) <- mode_of_transport
			time
}

# replicate makes it easy to call it over and over again
times = replicate( 15, time_for_commute())

print( class( times ))

print( times )

# lapply - "list apply"
prime_factors <- list(
	two = 2,
	three = 3,
	four = c(2,2),
	five = 5,
	six = c(3,2),
	seven = 7,
	eight = c(2, 2, 2),
	nine = c(3,3),
	ten = c(2,5)
)

head(prime_factors)

# to do something like finding unique factors, we *could* write a for loop to iterate over the list
unique_primes <- vector( "list", length( prime_factors ))
for( i in seq_along(prime_factors ))
{
	unique_primes[[i]] <- unique( prime_factors[[i]])
}
names(unique_primes) <- names(prime_factors)

unique_primes

# but this is clunky and error prone.  lapply makes it far easier
print( "with lapply >> ")
lapply( prime_factors, unique )

# if the return value from the function always has the same (known) size, you can
# vapply
vapply( prime_factors, length, numeric(1))

# if the output doesn't fit, you'll get an error.
# so don't do this, for example:
# vapply( prime_factors, unique, numeric(1))
# or you get this error
# Error in vapply(prime_factors, unique, numeric(1)) : 
#  values must be length 1,
# but FUN(X[[5]]) result is length 2

# sapply tries to "do the right thing" and simplify the output if it can
sapply( prime_factors, unique )  # in this case, it returns a list

# but this can be further simplified so it returns a vector
sapply( prime_factors, length )

# and this will return an array
sapply( prime_factors, summary )

# if the function we are calling takes arguments, we can do this
complemented <- c( 2, 3, 6,18 )
lapply( complemented, rep.int, times=4)

# if the argument we want to pass isn't the first one, we'll have to create
# a "wrapper" function that calls the "real" function and lets us
# manipulate the arguments the way we want them

# what if we want to loop over an array or matrix?

library(matlab) 

magic4 <- magic(4)

magic4

# what if we want to sum up the rows or columns of an array like this?
# We *could* use rowSums or colSums as seen earlier, but what about other
# arbitrary metics we might want to apply to the rows or columns in
# our matrix?  apply lets us handle this.

apply( magic4, 1, sum ) # same as calling rowSums, but we can pass any function here
apply( magic4, 2, sum ) # same as calling colSums

apply( magic4, 1, max )
apply( magic4, 2, max )

## apply can also be used with data frames

## mapply lets you work with multiple vectors simultaneously
## we'll skip this example for now and come back to it later

### split-apply-combine
# What if we have date that is broken up into groups?

frogger_scores <- data.frame( player = rep( c( "Tom", "Dick", "Harry"), times=c(2, 5, 3) ),
		score = round( rlnorm( 10, 8), -1 )
)

print( frogger_scores )

# what if we want to calculate the mean for *each player*?

# first, split by player
score_by_player <- with( frogger_scores, split( score, player ))

list_of_means_by_player <- lapply( score_by_player, mean )

print( list_of_means_by_player )

# now we combine the results into a single vector using unlist
mean_by_player <- unlist( list_of_means_by_player )

mean_by_player

# using tapply makes all of that much easier
means2 <- with( frogger_scores, tapply( score, player, mean ))

means2


## the plyr package offers simpler / more convenient versions of these *ply functions

library( plyr )

llply( prime_factors, unique )

laply( prime_factors, length )

laply( list(), length )

raply( 5, runif(1))
rlply( 5, runif(1)) # list output

# data frame output
rdply( 5, runif(1))

# discard output
r_ply(5, runif(1))



