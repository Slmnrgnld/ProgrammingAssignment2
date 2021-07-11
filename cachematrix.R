makeCacheMatrix <- function(x = matrix()) { ##this defines the argument with a default mode of "matrix"
  j <- NULL	## j is initialized as NULL which will hold the value of the matrix inverse
  set <- function(y){ ## this defines that the  function is assigned to 'set'
  x <<- y ## this is the value of matrix which is in the parent environment
  j <<- NULL ##if a new matrix is present, this resets 'j' to NULL
  }
  get <- function()x ##this defines the value of the function and returns the matrix arguments value

  setInverse <- function(inverse) j <<- inverse ## this assigns value of 'j' in parent environment
  getInverse <- function() j ## this gets the value of 'j'
  list(set = set, get = get, ## this is in referance to the functions with the $ operator
  setInverse = setInverse, 
  getInverse = getInverse)
}

##Please include your own comment to explain your code (Required in Rubric)

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}