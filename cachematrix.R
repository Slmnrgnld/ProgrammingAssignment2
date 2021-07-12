# the following are a pair of function that can be used to cache the inverse of a matrix
# the following are based on the Example: Caching the Mean of a Vector


## 'z' is inputted as a variable and is set as the name representator for matrix

makeCacheMatrix <- function(z = matrix()) { 
  a <- NULL	          
  
  set <- function(y){                       
  z <<- y                                   
  a <<- NULL                                
  }
  
  get <- function()z                        

  setInv <- function(Inv) z <<- Inverse          
  getInv <- function() z                              
  list(set = set, get = get,                             
  setInv = setInv, 
  getInv = getInv)
}


## the following lines is used to obtain the inverse value

cacheSolve <- function(z,...) {

  z <- x$getInv()
  
  if(!is.null(z)){
  message("getting the inversed matrix")
  return(a)
  }
  
  data <- x$get()
  
  z <- solve(data,...)
  x$setInverse(a)
  
  a
}
