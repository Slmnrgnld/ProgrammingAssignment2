makeCacheMatrix <- function(x = matrix()) { ##this defines the argument with a default mode of "matrix"
  a <- NULL	                                ## a is initialized as NULL which will hold the value of the matrix inverse
  set <- function(y){                       ## this defines that the  function is assigned to 'set'
  x <<- y                                   ## this is the value of matrix which is in the parent environment
  a <<- NULL                                ##if a new matrix is present, this resets 'a' to NULL
  }
  get <- function()x                        ##this defines the value of the function and returns the matrix arguments value

  setInverse <- function(inverse) a <<- inverse           ## this assigns value of 'a' in parent environment
  getInverse <- function() a                              ## this gets the value of 'j'
  list(set = set, get = get,                              ## this is in referance to the functions with the $ operator
  setInverse = setInverse, 
  getInverse = getInverse)
}

##Please include your own comment to explain your code (Required in Rubric)

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  a <- x$getInverse()
  if(!is.null(a)){
  message("getting cached data")
  return(a)
  }
  mat <- x$get()
  a <- solve(mat,...)
  x$setInverse(a)
  a
}
