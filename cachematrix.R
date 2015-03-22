## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  theInverse <- NULL
    
  set <- function(y) {
      x <<- y
      theInverse <<- NULL
    }
    
  get <- function() {
      return(x)
    }
    
  setInverse <- function(receivedInverse) {
    theInverse <<- receivedInverse
  }
  
  getInverse <- function() {
    return(theInverse)
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  theInverse <- x$getInverse()
  
  if (!is.null(theInverse)) {
    print("Returning cached")
    return(theInverse)
  } else {
    ourMatrix <- x$get()
    theInverse <- solve(ourMatrix)
    x$setInverse(theInverse)
    return(theInverse)
  }
  }    
