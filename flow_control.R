# Flow control structures, loops, if/else, etc.
# Filename: flow_control.R
# Author: prhodes
###############################################################################


if( TRUE )
{
	print( "It was true!")
} else
{
	print( "It was false!" )
}

# multiple conditions
r <- round(rnorm(2), 1 )
x <- r[1] / r[2]

if( is.name(x))
{
	message( "x is missing" )
} else if( is.infinite(x))
{
	message( "x is infinite" )
} else if( x > 0 )
{
	message( "x is positive" )
} else if( x < 0 )
{
	message( "x is negative" )
} else
{
	message( "x is zero" )
}

# R does the trick where if conditions can return a value

x <- sqrt( -1+0i)
reality <- if( Re(x) == 0 ) {
	"real"
} else 
{
	"imaginary"
}

reality

## vectorized if

# don't do this.  Standard IF only expects ONE logical condition
if( c(TRUE, FALSE )) { message( "two choices" ) }

# ifelse is the vectorized version
ifelse( c(TRUE, FALSE, FALSE, TRUE, TRUE ), "Head", "Tail" )

ifelse( rbinom(10, 1, 0.5 ), "Head", "Tail" )

## using switch
x = "gamma"

greek <- switch( x,
		alpha = 7,
		beta = sqrt(4),
		gamma = {	a <- sin(pi/3)
					4 * a^2 
				} 
			)
			
greek

### loops

# repeat loop
repeat
{
	message( "Happy Groundhog Day!" )
	if( rbinom(1,1, 0.5))
	{
		break
	}
}

# while loop
action <- sample( c( "Learn French", "Make an ice statue", "Rob a bank", "Win Andie McDowell's heart" ), 1 )

while( action != "Win Andie McDowell's heart" )
{
	message( "Happy Groundhog Day!")
	action <- sample( c( "Learn French", "Make an ice statue", "Rob a bank", "Win Andie McDowell's heart" ), 1 )
	
	message( "action = ", action )
}



# for loops
for( i in 1:5 ) message( "i = ", i )

for( month in month.name )
{
	message( "The month is ", month )
}



			
