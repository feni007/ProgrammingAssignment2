## Function to create a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL   # yahan inverse store hoga
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  
  getInverse <- function() {
    inv
  }
  
  list(
    set = set,
    get = get,
    setInverse = setInverse,
    getInverse = getInverse
  )
}

## Function to compute the inverse of the special matrix
cacheSolve <- function(x, ...) {
  
  inv <- x$getInverse()
  
  if (!is.null(inv)) {
    message("getting cached inverse")
    return(inv)
  }
  
  data <- x$get()
  
  ### TODO: yahan solve() ka use karke inverse nikalo
  ### TODO: phir x$setInverse(...) se cache me save karo
  
  inv <- solve(data)
  x$setInverse(inv)
  
  inv
}
