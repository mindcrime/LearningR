# Data Frames
# Filename: data_frames.R
# Author: prhodes
###############################################################################

# data frames are used for spreadsheet like data.
# they can be thought of as matrices where each column can
# have a different data type.

# to create a data frame, use the data.frame() function

a_data_frame <- data.frame( x = letters[1:5],
							y = rnorm(5),
							z = runif(5) > 0.5 
					)
					
print( a_data_frame )

# the type of a data frame is "data.frame"
print( class( a_data_frame ) )

# the rows here were numbered from 1 to 5.  If any of the input vectors
# had had names, the row names would have been taken from the first such
# vector

y <- rnorm(5)
names(y) <- month.name[1:5];

print(y)

another_data_frame <- data.frame( x = letters[1:5],
						y = y,
						z = runif(5) >= 0.5 
				)

# notice our rows are now named
print( another_data_frame )

# You can access elements using the column names like this
print( another_data_frame$y[1] )
print( another_data_frame$y[2] )

# two interesting quirks regarding data frames...

# length() returns the same value as ncol(), not the total number of elements

print( length(another_data_frame) )
print( ncol( another_data_frame ) )

# and names() returns the same values as colnames

print( names( another_data_frame ) )
print( colnames( another_data_frame ) )

# if you pass data.frame() vectors of different lengths, the shorter one(s) will
# be recycled as necessary to match the longest, as long as the lengths divide
# evenly into the length of the longest.

# IOW, you can do this:

x = data.frame( x = 1,
		    y = 2:3,
			z = 4:7 )
	
print( x )

# but not this: 
# x = data.frame( x = 1,
#		y = 1:3, -- this won't recycle evenly into the length (4) of column z
#		z = 4:7 )


# indexing data frames works much like matrices

# we can access a specific element by its coordinates like this
val = x[1,1]
print( val )

# we can access multiple columns simultaneously
val = x[2:3, -3 ]
print( val )

# note that since we selected multiple columns, we got back
# an object of class "data.frame"
print( class( val ) )

print( x )

# you can select an entire column like this
print( x[,2] )

# or like this
print( x[[2]])

# but don't do this
# print( x[[,2]])

# once you have a column, you can select within it
# since you just get back a vector of $whatever
print( class( x[[2]]))
print( class( x[,2]))

# these return the same thing
print( x[[2]][2] )
print(  x[,2][2] )

# you can also use the $operator on colnames
print( colnames(x))

# again, we just get a vector of whatever
print( class( x$y ))

# and again, we can then dereference / index into that
print( x$y[2] )
print( x$y[3] )
print( x$y[2:3] )

# OR if you have column names, you can use them with the double bracket notation in quotes
# like this
print( class( x[["y"]] ) )
print( x[["y"]][2] )
print( x[["y"]][3] )
print( x[["y"]][2:3] )

# but what about with single brackets?
# you can do that, but note that you get
# back a data.frame
print( class( x["y"] ) )

# so this wouldn't work (it yields "Error in `[.data.frame`(x["y"], 2) : undefined columns selected" )
# print( x["y"][2])

# but you could do this or other weird stuff since
# you're just working with a data.frame 
print( class( x["y"][1][2,] ) )
print( x["y"][1][2,])


# you can use a logical vector
print(x)
print( x[ c(FALSE, FALSE, FALSE, TRUE ), c( "z", "y" )] )


# you can use logical conditions like this
print( x[x$y > 2, c("x","y") ] )

# or you can use the subset function which makes the syntax a bit cleaner
q = subset( x,  y > 2, c( x,y ))
print(q)

# you can transpose a data frame as well
t_frame = t(x)
print(x)
print(t_frame)
# note that this forces type conversions and that the result is a matrix
print( class(t_frame))

