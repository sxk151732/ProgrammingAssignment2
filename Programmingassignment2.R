makeCacheMatrix <- function(totalvalues, minval, maxval, rows, cols) {
	if (rows != cols) {
		invmat <<- "N"
		stop("not a square matrix")
		}
	else {
		x <<- matrix(runif(totalvalues, minval, maxval), rows, cols)
		inv <<- solve(x)
		print (inv)
		invmat <<- "Y"
	}
}

cachesolve <- function(x, ...) {
       if (invmat == "Y") {
		print ("already inversed matrix")
		print (inv)
	}
	 else if (invmat == "N") {
		inv <- solve(x)
		invmat <<- "Y"
		print (inv)
	}
}