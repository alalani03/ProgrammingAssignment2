## makeCacheMatrix will take the input of a square matrix and will be used in conjunction 
## with cacheSolve to get the matrix, set the inverse of the input square matrix, get the 
## inverse to see if it has already been calculated, and if it has not been calculated, it will 
## use the solve to find the inverse of the square matrix. 

## makeCacheMatrix will be used to set the square matrix, change the square matrix, set the inverse 
<<<<<<< Updated upstream
## of the square matrix or get the square matrix by using the special matrix plus the “$” and 
## one of the list functions within makeCacheMatrix (example, to get the matrix, with “a” 
## being the matrix, we can use a$get() 

## Does this work?????

## sending this back???

=======
## of the square matrix or get the square matrix by using the special matrix plus the "$" and 
## one of the list functions within makeCacheMatrix (example, to get the matrix, with "a" 
## being the matrix, we can use a$get() 

>>>>>>> Stashed changes


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


## cacheSolve will first check if the inverse already has been calculated. If yes, it will 
<<<<<<< Updated upstream
## display the message “getting cached data.” If the inverse has not been calculated, it will 
## get the square matrix (x$get()), use the solve() to find the inverse of the matrix, set the 
## matrix variable “m” within the makeCacheMatrix to the inverse matrix and print the inverse 
## matrix. This way, if a user input the same square matrix, it will simply display, “getting 
## cached data.”  
=======
## display the message "getting cached data." If the inverse has not been calculated, it will 
## get the square matrix (x$get()), use the solve() to find the inverse of the matrix, set the 
## matrix variable "m" within the makeCacheMatrix to the inverse matrix and print the inverse 
## matrix. This way, if a user input the same square matrix, it will simply display, "getting 
## cached data."  
>>>>>>> Stashed changes

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

