## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
matrix=NULL
  set <- function(y) {
    x <<- y
    matrix <<- NULL
  }
  get<-function(){x}
  setinverse<-function(){s<<-matrix}
  getinverse<-function(){matrix}
  list(set=set,get=get,getinverse=getinverse,setinverse=setinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  s<-x$getinverse()
  if(!is.null(s))
  {
   return(s)  
  }
  data=x$get()
  s<-solve(x,...)
  x$setinverse(s)
  s
        ## Return a matrix that is the inverse of 'x'
}
