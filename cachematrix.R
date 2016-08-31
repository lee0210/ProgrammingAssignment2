## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    self.inverse <- NULL
    set <- function(y) {
        x <<- y
        self.inverse <<- NULL
    }
    get <- function() x
    setInverse <- function(y) {
        self.inverse <<- y
    }
    getInverse <- function() self.inverse
    list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    self.inverse = x$getInverse()
    if (!is.null(self.inverse)) {
        return(self.inverse)
    }
    x$setInverse(solve(x$get()))
    x$getInverse()
}
