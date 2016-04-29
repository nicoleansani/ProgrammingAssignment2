 ## matrix inversion is a coastly computation
 ## cache the inverse of a matrix

## makecachematrix creates a list contining a function to
## 1. set the value of a matrix
## 2. get the value of a matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrixWrite a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
 set <- function(y) {
 x <<- y
 inv <<- NULL
 }
 get <-function( )x
 setinverse <- function(inverse) inv <<-inverse
+getinverse <- function() inv
 list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## ## cacheSolve computes the inverse of the special matrix
 ## cacheSolve first checks to see if the inverse has already been calculated
 ## if it has been calculated, gets the inverse from the cache and skips the computation
 ## if not calculates the inverse of the data and sets the value of the inverse in the cache via the setinverse function

cacheSolve <- function(x, ...) {
        inv <-x$getinverse()  
        if(!is.null(inve)) {
      message("getting cached data")
      return(inv)
 }
 data <- x$get()
 inv <- solve(data, ...)
 x$setinverse(inv)
 inv
}
