## The following functions compute and store the inverse of an invertable matrix,
## and then check to see if the inverse of future passed matrices can be retrieved
## from cache or not.

## The following function computes the inverse of a matrix and stores it

makeCacheMatrix <- function(x = matrix()) {
    y <<- x   # Store the passed matrix in cache for later comparison
    inv <<- solve(x)   # Store the inverse of the passed matrix
    inv
}


## The following function checks to see if the passed matrix's inverse
## is already stored in cache and, if so, returns the inverse from cache.
## If not, it calls the makeCacheMatrix function to get the inverse

cacheSolve <- function(x, ...) {
    if (identical(x,y)) {  # Check if the passed matrix is already stored in cache
        ret_inv <- inv   #If so, return inverse from cached value
    } else {
        ret_inv <- makeCacheMatrix(x)  # Otherwise, compute the inverse again
    }
    ret_inv
}
