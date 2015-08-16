# TODO: Add comment
# 
# Author: prhodes
###############################################################################

# vectorization means different things in R.  For one, it means some functions and
# operators work on vectors on an element-by-element basis.

cat( 1:4 + 6:9 )
cat( "\n" )

# it also means some functions take a vector as an argument and
# operate on all of the elements to yield a summary value
cat( sum( 1:10))
cat( "\n" )

# and finally, it means some functions "vectorize" over their argument 
# list. For example, sum does this.  But median does not.

cat( sum( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10) )
cat( "\n" )

# but this won't work
# cat( median( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ))


