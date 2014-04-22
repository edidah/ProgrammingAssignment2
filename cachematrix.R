## Put comments here that give an overall description of what your
## functions do

## a function to set matrix, get matrix,set inverse and get inverse

makeCacheMatrix <- function(x = matrix()) {
  m <-NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
get <- function()x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set=get, get=set,
     setinverse=setinverse,
     getinverse = getinverse)
}


## a function to solve the inverse of a matrix.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
}
data <- x$get()
m <- inverse(data,...)
x$setinverse(m)
m  
}
