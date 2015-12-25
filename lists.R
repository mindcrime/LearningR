# Using lists
# Filename: lists.R
# Author: prhodes
###############################################################################

# lists are similar to vectors, but can store data with mixed types.
# that is, a list can have  a mixture of vectors, arrays, data frames, even
# functions, all mingled together
 a_list <- list( c( 1, 1, 2, 4, 14, 42), 
		 		 month.abb, 
				 matrix( c( 3, -8, 1, -3 ), nrow=2), 
				 asin 
				)

print( a_list )

# you can name the elements of a list at construction time, or afterwards
# using the names() function

names( a_list ) <- c( "catalan", "months", "involutary", "arcsin" )

print( a_list )

# and then access an element by name 
print( a_list$months )

# functions are objects that can be passed around and called this way
print( a_list$arcsin(-1) )

# lists can contain other lists
main_list <- list (
		middle_list = list (
			element_in_middle_list = diag(3),
			inner_list = list (
				element_in_inner_list = pi*1:4,
				another_element_in_inner_list = "a"
			)
		),
		element_in_main_list = log10(1:10)
)

print( main_list )
print( names(main_list))

# lists are recursive, in that they can contain other lists
# vectors, matrices and arrays however, are atomic

print( "list:")
print( is.atomic(list()))
print( is.recursive(list()))

print( "numeric:")
print( class( numeric()))
print( is.atomic(numeric()))
print( is.recursive(numeric()))

# it looks like vectors are recursive
v = c( c( "a", "b"), c( "c", "d" ) )

print( class(v))
# but when you display thisk, you see that you don't have a vector containing
# two vectors, but rather one vector which has the contents of the other two merged

print( v )

# and to prove the point again
print( class( v ) )
print( is.atomic( v ) )
print( is.recursive( v ) )

## list dimensions and arithmetic

# to get the length of a list
print( length( a_list ) )

# lists don't have dimensions
print( dim(a_list ))

# and nrow, ncol, NROW, NCOL, etc. operate the same way on lists as they do on vectors
print( nrow( a_list ) )
print( ncol( a_list ) )
print( NROW( a_list ) )
print( NCOL( a_list ) )

# since lists can contain mixed types, you can't really do arithmetic on lists themselves
l1 <- list( 1:5 )
l2 <- list( 6:10 )

# this won't work
# l1+l2

# but you can add the elements as long as the types are compatible
l1[[1]] + l2[[1]]

# as with vectors, you can access elements using square brackets using
# positive or negative indices, element names, or a logical index
l1 <- list( first = 1, second = 2, third = list( alpha = 3.1, beta = 3.2) )

print( l1[1:2] )

print( l1[-3])

print( l1[c( "first", "second" )])

print( l1[ c( FALSE, TRUE, TRUE ) ] )


## note that when you index into a list, by default, what you get is ANOTHER LIST
print( class( l1[1]))
## if you're really trying to access the element value, you have to use the
## double square bracket notation or the $ operator (for named elements)
print( class( l1[[1]]))

print( l1[[1]])

# OR

print( class( l1$first ))
print( l1$first )

# for nested elements, you can stack up the square brackets

print( l1[[3]][[1]]  )
print( l1[[3]][[2]]  )

# or chain the $ operations
print( l1$third$alpha )

# or mix and match
print( l1[[3]]$alpha )
print( l1[[3]]$beta )

# double square brackets with strings also works for named elements
print( l1[["third"]][["alpha"]])

# converting between vectors and lists
busy_beaver <- c( 1, 6, 21, 107 )
print( busy_beaver )

print( as.list( busy_beaver ))


# you can go the other way easily enough so long as your list
# contains only scalars

print( as.numeric( list( 1, 6, 21, 107)) )


# but this won't work for something like this
prime_factors <- list(
 two = 2,
 three = 3,
 four = c(2,2),
 five = 5,
 six = c(2,3),
 seven = 7,
 eight = c(2,2,2),
 nine = c(3,3),
 ten = c(2,5)
)

# cant' do that
# as.numeric( prime_factors )
# you'll just get "Error: (list) object cannot be coerced to type 'double'" if you try

# but you can do this
print( unlist(prime_factors ) )


# you can combine lists using the c() function
print( c( list( a = 1, b = 2 ), list( 3 ) ) )

# if you concatenate a list and a vector, the vector is converted to
# a list first
print( c( list( a = 1, b = 2 ), 3 ) )
# note that this gives the exact same output as the previous example because the vector
# is converted to list

# you can use rbind and cbind on lists, but it's not a good idea as it gives
# you "weird" objects that are probably useless

matrix_list_hybrid <- cbind( list( a=1, b=2), 
							 list( c=3, list(d=4 ) ) )
					 

# you get a matrix, but not a very sensible one
print( class( matrix_list_hybrid ))

print( matrix_list_hybrid )

# but if you dig in and dereference things, it more or less
# works out.  
print( matrix_list_hybrid[2,2] )

# strangely enough though, stuff like this does not work
print( matrix_list_hybrid$a )
print( matrix_list_hybrid$b )
print( matrix_list_hybrid$b$d )

# let's see if it things we have names
print( names( matrix_list_hybrid ) )
# no, we don't.  So doing that rbind on lists thing doesn't use names
# the way you might expect

print( str( matrix_list_hybrid ) )


# this will probably work though
print( matrix_list_hybrid[2,1]$b)
# if you dig the original list out, you can still
# use its names





