## functions that cache inverse of a matrix

## special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

  i <-  NULL
  
  ##Set the matrix
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  
  ##Get the matrix
  get <- function() {
    ## Return the matrix
    m
  }
  
  ##Set the inverse of the matrix
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ##Get the inverse of the matrix
  getInverse <- function() {
    ## Return the inverse property
    i
  }

  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  
  data <- x$get()
  
  m <- solve(data) %*% data

  x$setInverse(m)
  
  
}
