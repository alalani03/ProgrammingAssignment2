## makeCacheMatrix will take the input of a square matrix and will be used in conjunction 
## with cacheSolve to get the matrix, set the inverse of the input square matrix, get the 
## inverse to see if it has already been calculated, and if it has not been calculated, it will 
## use solve() to find the inverse of the square matrix. 


## makeCacheMatrix will be used to set the square matrix, change the square matrix, set the inverse 
## of the square matrix or get the square matrix using one of the list functions within makeCacheMatrix 


makeCacheMatrix <- function(x=matrix()) { ## user must input info for a square matrix such as matrix(data,nrow=,byrow=T)
  m <- NULL ## sets m to NULL
  set <- function(y) { ## one of the 4 list functions within makeCacheMatix which allows user to change the original square matrix
    x <<- y 
    m <<- NULL ## if the original square matrix is changed and the inverse has been calculated, then this will set m to NULL
  }
  get <- function() x ## if the inverse has not been calculated, this will be used by cacheSolve to calculate it 
  setinv <- function(inv) m <<- inv ## user can set the inverse by calling the a$setinv(). 
  getinv <- function() m ## use to check if the inverse has already been calculated using the below function 
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv) ## setting each of the 4 list function 
}


## cacheSolve will first check if the inverse already has been calculated. If yes, it will display, 
## getting cached data. If not, it will use the above list functions to calculate and set the inverse 
## matrix to m 


cacheSolve <- function(x, ...) {
  m <- x$getinv() ## checks to see if the inverse exists 
  if(!is.null(m)) { ## if m is not empty, it will display "getting cached data" and will display the inverse
    message("getting cached data")
    return(m)
  }
  data <- x$get() ## if m is NULL, this will get the special matrix
  m <- solve(data, ...) ## use the special matrix (data) and find its inverse with solve()
  x$setinv(m) ## set value of m within makeCacheMatrix so if cacheSolve is run again, it will simply catch the inverse 
  m
}

