
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
}
