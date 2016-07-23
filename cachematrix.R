## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inve <- NULL
set <- function(y){
  x <<- y
  inve <<- NULL
}
get <- function(x)
setInverses <- function(inverse) inve <<- inverse
getInverses <- function() inve
list (set = set,
      get = get,
      setInverses = setInverses,
      getInverses = getInverses)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inve <- x$getInverses()
if(!is.null(inve)){
  message("getting cached data")
  return(inve)
}
mat <- x$get()
inve <- solve(mat,...)
x$setInverses(inve)
inve
}
