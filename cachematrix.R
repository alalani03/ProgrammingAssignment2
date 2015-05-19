## makeCacheMatrix will take the input of a square matrix and will be used in conjunction 
## with cacheSolve to get the matrix, set the inverse of the input square matrix, get the 
## inverse to see if it has already been calculated, and if it has not been calculated, it will 
## use the solve to find the inverse of the square matrix. 


## makeCacheMatrix will be used to set the square matrix, change the square matrix, set the inverse 
## of the square matrix or get the square matrix using one of the list functions within makeCacheMatrix 


makeCacheMatrix <- function(x=matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## cacheSolve will first check if the inverse already has been calculated. If yes, it will display, 
## getting cached data. If not, it will use the above list functions to calculate and set the inverse 
## matrix to m 


cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}

