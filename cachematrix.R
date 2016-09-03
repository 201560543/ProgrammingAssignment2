<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  setsol <- function(y) {
    x <<- y
    inv <<- NULL
  }
  getsol <- function() x
  setInv <- function(inverse) inv <<- inverse
  getInv <- function() inv
  list(setsol = setsol,
       getsol = getsol,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInv()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  matrx <- x$getsol()
  inv <- solve(matrx, ...)
  x$setInv(inv)
  inv
}
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
