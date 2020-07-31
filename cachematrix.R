## Put comments here that give an overall description of what your
## functions do

#-- This function create a matrix called "makeCacheMatrix" and it has functions in order to calcularte the inverse of the matrix.
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        seti <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(inversa) inverse <- inversa
        getinverse <- function() inverse
        list(seti = seti, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}

# 


#-- Now, "cacheSolve" will calculate the inverse of the matrix created in the previous function from the cache. 
cacheSolve <- function(x, ...) {
        inverse <= x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        mat <- x$get()
        inverse <- solve(mat, ...)
        x$setinverse(inverse)
        inverse
}
