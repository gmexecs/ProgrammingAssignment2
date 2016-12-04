## makeCacheMatrix creatres a list containing a funtion to:
## 1-Set the value for the matrix
## 2.-get the value of that matrix
## 3-set the inverse value of the matrix
## 4-Get the inverse value of the matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
get < - function() x
setInverse <- function (inverse) inv <<- inverse 
getInverse <- function() inv 
list (set = set,
get = get,
setInverse = setInverse,
getInverse = getInverse)
}


## This function gets the inverse of the matrix created
## by makeCacheMatrix from above.        
## If the inverse is already calculated
## retrieves the inverse from the cache.
        
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null(inv)) {
message ("getting cached data")
return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse (inv)
inv 
}
