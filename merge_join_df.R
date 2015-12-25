# Merging and joining data frames
# Filename: merge_join_df.R
# Author: prhodes
###############################################################################

a_data_frame <- data.frame( x = letters[1:5],
		y = rnorm(5),
		z = runif(5) > 0.5 
)

another_data_frame <- data.frame(  # same cols as a_data_frame, different order
		z = rlnorm(5),
		y = sample(5),
		x = letters[3:7]
)


print( a_data_frame )
print( another_data_frame );

row_merged = rbind( a_data_frame, another_data_frame );

# merged by row.  Since the column names were the same
# it "does the right thing" even though they were in 
# different orders within the respective source data frames
print( row_merged )

# cbind works similarly, but it doesn't check for duplicate column names!
col_merged = cbind( a_data_frame, another_data_frame )

print( col_merged )

# what happens when you have a name collision like that?
# print( col_merged$y )
# looks like you just get the first match?

# when you have the same column names, you can join the frames
# using merge()


# this is like doing an inner join... you get the rows where the
# values match only
inner_merged = merge( a_data_frame, another_data_frame, by="x" )

print( inner_merged )

# using all = TRUE gives you something more like an outer join
# where you get every row, with NA where there's nothing to join
outer_merged = merge( a_data_frame, another_data_frame, by="x", all=TRUE )

print( outer_merged )

# colSums and colMeans calculates sum and mean of columns
print( colSums( inner_merged[,2:5] ))
print( colMeans( inner_merged[,2:5 ] ))

# rowMeans and rowSums does the same thing, by row
print( rowSums( inner_merged[,2:5] ))
print( rowMeans( inner_merged[,2:5] ))






