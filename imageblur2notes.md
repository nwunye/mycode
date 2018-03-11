This algorithm's objective is to take a over-simplified representation of an image (where a "0" represents an inactive pixel, and a "1" represents an active pixel), and transform (or "blur") it. The algorithm should change all the zeroes adjacent to a "1" to ones.

First, define the initialize method to accept an array-of-arrays (the "image") as an argument. Next, define the "output_image" method, which joins the elements of each subarray (deletes the commas and spaces), and puts them out as one row.

To define the blur method, we first must locate each cell with a value of 1. First, we check each row (or each element of the overall array). Then, within each row, we check each column (or each element of the subarray). Next, we change to "1" the cells to the top ("row_index-1"), bottom("row_index+1"), left("column_index-1") and right("column_index+1") of the cell in question.

When locating the adjacent-top or adjacent-left cells, it is possible for "row_index-1" or "column_index-1" to equal "-1", which would target the last row in the overall array, or the last element in the subarray. To prevent this, we introduce the conditions "if row_index > 0" and "if column_index > 0".

When locating the adjacent-bottom or adjacent-right cells, it is possible for "row_index+1" or "column_index+1" to be greater than the number of rows, or the number of subarray elements, which would return a value of "Nil". To prevent this, we introduce the conditions "if row_index+1  != @array_of_arrays.length" and "if column_index+1 != row.length".

When we run our code with the argument:

[0,0,0,0],
[0,0,0,0],
[0,0,0,0],
[0,1,0,0],
[0,0,0,0],
[0,0,0,0]

We expect this output:

0000
0000
0100
1110
0100
0000

But instead we get:

0000
0000
0111
1111
1111
1111

Why? Well, the blur method is updating the pixel grid at the same time that it cycles through each cell; some of the zeroes are chnaged to ones before the method has processed them through the "if cell == 1" test.

To prevent this, it would help to take a "snapshot" of the original state of the grid, and use this snapshot to process the cells. The updates (i.e. changing zeroes to ones) will be applied to the final grid, but the snapshot remains unchanged.

Define the "make_a_copy" method to generate a snaphot of the original grid. Be sure it returns the actual snaphot ("return copy") so that the snapshot is available to the blur method.

Next, update the blur method to create the snapshot (from the "make_a_copy" method) and process this snapshot through the 2 "do" loops. It is still the @array_of_arrays variable that is updated, but the snaphot remains unchanged.

When we run the code, we get the output we expected:

0000
0000
0100
1110
0100
0000
