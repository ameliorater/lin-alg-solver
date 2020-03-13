README

***BEFORE YOU BEGIN***
Ensure that the following files are ALL contained in the same directory (folder):
leastSquares.m
myInverse.m
myOrthonormalBasis.m
runner.m
inverse-input.csv
ls-eq-input.csv
ls-sol-input.csv
orthonormal-input.csv
Should you find yourself missing any of the above files, re-download the original folder for this program set.

****RUNNING THIS PROGRAM****
When you are ready to run any of the above options, open and run the runner.m program
Attempting to run any other .m file will not run the program.


**DATA ENTRY**

This program uses .csv files for input

Follow the general format provided by each .csv
The formatting will work for any size of data set, though execution times may suffer with larger data-sets

FOR FINDING AN INVERSE
Edit the file, "inverse-input.csv" to contain the matrix you wish to invert
Any matrix may be entered so long as NO ENTRIES IN THE MATRIX ARE LEFT COMPLETELY BLANK
EX:
1,0,1
2,2,2
3,4,5

FOR LEAST SQUARES SOLUTION
Edit the "ls-sol-input.csv" file with your 'A' matrix on the left and 'b' separated by one column to the right of A (A matrix should contain your independent variables)
Please note: there should be a blank column between your 'A' matrix and your 'b' matrix 
EX:
1,3, ,0
0,4, ,-1
2,1, ,3

FOR LEAST SQUARES REGRESSION EQUATIONS
Edit "ls-eq-input.csv" with the coordinate points (2D cartesian coordinates) you wish to calculate a regression line for. Upon running you will be asked to select a degree for the polynomial regression you want.
DATA EX:
x1,y1
x2,y2
x3,y3

FOR ORTHONORMAL BASES
Edit "orthonormal-input.csv" with your vectors you wish to find an orthonormal basis for as the columns (example below) DO NOT INPUT VECTORS WITH MISMATCHED DIMENSION (ie a 3d vector and a 5d vector)
DATA EX:
-1,2,0
3,0,0
0,5,1
*This example will compute an orthonormal basis for vectors (-1,3,0), (2,0,5), and (0,0,1)*