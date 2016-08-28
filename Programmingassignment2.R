## Create a function to make a matrix!  
makeCacheMatrix <- function(totalvalues, minval, maxval, rows, cols) {
	## The if statement checks whether the matrix is square matrix with equal number of rows and columns
	if (rows != cols) {
		invmat <<- "N"
		stop("not a square matrix")
		}
	## The else statement will create a matrix as per given argument and inverse the matrix as required by project	
	else {
		x <<- matrix(runif(totalvalues, minval, maxval), rows, cols)
		inv <<- solve(x)
		invmat <<- "Y"
	}
}
## The cachesolve function will create a function to print any matrix that is already Cache.
cachesolve <- function(x, ...) {
       ## The If statement will check if the inverse matrix is their in cache, it prints out the matrix. 
       if (invmat == "Y") {
		print ("already inversed matrix")
		print (inv)
	}
	## The else if statement will check if the inverse matrix is not their in cache, it will inverse the matrix, print out the outout and save it in cache.
 	 else if (invmat == "N") {
		inv <- solve(x)
		invmat <<- "Y"
		print (inv)
	}
}
