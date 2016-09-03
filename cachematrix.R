<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL #creating the empty int matrix for future reference
  setsol <- function(y) { 
    x <<- y    #the new matrix is stored
    inv <<- NULL
  }
  getsol <- function() x #defining the function for new matrix
  setInv <- function(inverse) inv <<- inverse #updating the values for inv by storing the inverse function
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
  if (!is.null(inv)) {                  #checking if inv is null,if yes them cached data is fetched
    message("getting cached data")
    return(inv)
  }
  matrx <- x$getsol() #fetching the getsolvector from previously saved new matrix
  inv <- solve(matrx, ...)
  x$setInv(inv)
  inv
}
