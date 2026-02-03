makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL

  set <- function(y) {
    x <<- y
    inv <<- NULL
  }

  get <- function() x

  setinverse <- f
