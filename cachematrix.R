## makeCacheMatrix function takes matrix input
## get() display matrix
##cacheSolve will inverse matrix



makeCacheMatrix <- function(x = matrix()) {
  
    im <- NULL
    #  i <- sqrt(length(x))
    #  m <<- matrix(x,i,i)
    
    set <- function (y) {
      x <- y
      im <<- NULL
      #  i <- sqrt(length(x))
      #  m <<- matrix(x,i,i)
    }
    get <- function() m
    
    setmatrix <- function(solve) im <<- solve
    getmatrix <- function() im
    
    list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
    

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  im <-x$getmatrix()
  
  if(!is.null(im)){
    message("getting cached matrix value")
    #i <- sqrt(length(im))
    #im <- matrix(im,i,i)
    return(m)
  }
  mat <-x$get()
  im <-solve(mat, ...)
  x$setmatrix(im)
  im
}
