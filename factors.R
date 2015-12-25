# Working with factors
# Filename: factors.R
# Author: prhodes
###############################################################################

# factors are for storing "categorical" data (ex, "male" and "female" or "small", "medium", "large", etc.)

# if you create a data frame with a column of text data, R will assume by
# default that the text is categorical and convert to factors

heights <- data.frame( 
		height_cm = c( 153, 181, 150, 172, 165, 149, 174, 169, 198, 163),
		gender = c( "female", "male", "female", "male", "male",
				"female", "female", "male", "male", "female" )
		)

heights

# confirm that gender is a factor now
class( heights$gender )

heights$gender

# "female" and "male" have been defined as the "levels" of our factor

# so now we can't do this
heights$gender[1] <- "Female"  # note the uppercase F
# this would give us "invalid factor level, NA generated"

# another way to see the levels
levels( heights$gender )

# if we just want a count of the levels
nlevels( heights$gender )

# You can also create factors explicitly like so:
gender_char = c( "female", "male", "female", "male", "male",
		"female", "female", "male", "male", "female" )

gender_fac <- factor( gender_char )

levels( gender_fac )

str( gender_fac )







