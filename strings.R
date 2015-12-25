# operations on strings
# Filename: strings.R
# Author: prhodes
###############################################################################

# you can concatenate character vectors with c()
text = c( "You should use double quotes most of the time", 
		'Single quotes are better for including " inside the string' )

print( text )

# paste combines strings together
s = paste(  "You should use double quotes most of the time", 
		'Single quotes are better for including " inside the string' )

print( s )

# if you pass two vectors, the elements of the shorter one are repeated go to with the
# other elements.  So this prints "red lorry" and "yellow lorry"

print( paste( c("red", "yellow" ), "lorry" ) )

# you can define the separator
print( paste( c("red", "yellow"), "lorry", sep="-") )

# collapse merges the outputs into one cohesive output
print( paste( c("red", "yellow"), "lorry", collapse=", ") )

print( paste( c("red", "yellow"), "lorry", sep="-", collapse=", ") )

# use paste with collapse to combine our two strings from earlier
paste( text, collapse = ". " )

# use paste0 when you don't want any separator at all
print( paste0( c("red", "yellow"), "lorry") )

# toString is a variation that provides a comma separator, and lets us control the output, for example
# by using width=X

x <- (1:15)^2

print( x )

print( toString( x ))

print( toString( x, width=40 ))

# cat is a low level function like paste but with less formatting

cat( c("red", "yellow"), "lorry" )

# usually when strings are printed, they are wrapped in double quotes.
# You can supress that with noquote()


print( noquote( paste( text, collapse = ". " ) ))

### formatting numbers
pow <- 1:3
powers_of_e <- exp(pow)

formatC( powers_of_e )

formatC( powers_of_e, digits=3)

formatC( powers_of_e, digits=3, width=10)

# scientific notation
formatC( powers_of_e, digits=3, format="e")

# prefix +ve values with a +
formatC( powers_of_e, digits=3, flag="+")

## R also provides a standard C style sprintf() function

sprintf( "%s %g = %f", "Euler's constant to the power", pow, powers_of_e )

sprintf( "%s %g = %.3f", "Euler's constant to the power", pow, powers_of_e )

# scientific notation
sprintf( "%s %g = %e", "Euler's constant to the power", pow, powers_of_e )

# there's also format()

format( powers_of_e )

format( powers_of_e, digits=3 )

format( powers_of_e, digits=3, trim=TRUE )

#and prettyNum for working with really big numbers or really small numbers
prettyNum( c(1e10, 1e-20), 
		big.mark = ",",
		small.mark = " ",
		preserve.width="individual",
		scientific=FALSE )

## using special characters
cat( "foo\tbar", fill=TRUE )

cat( "foo\nbar", fill=TRUE )

cat( "foo\\bar", fill=TRUE )

## changing case
toupper( "I'm shouting!" )

tolower( "I'M WHISPERING" )


# extracting substrings
woodchuck <- c( "How much wood would a woodchuck chuck", 
		"If a woodchuck could chuck wood", 
		"He would chuck, he would, as much as he could", 
		"And chuck as much wood as a woodchuck would", 
		"If a woodchuck could chuck wood.")

substring( woodchuck, 1:6, 10 )

substr( woodchuck, 1:6, 10 )


# strsplit lets us break strings up into words
strsplit( woodchuck, " ", fixed=TRUE )

# note that this returns a list, because the original input consisted of
# character vectors of possibly differing lengths

# use a regex so we don't pick up the commas
strsplit( woodchuck, " ", ",? " )







