## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL #initialize m
  set<-function(y){ #create new matrix, deleting existing one
    x<<-y
    m<<-NULL
  }
  get<-function() x #get the matrix
  setmatrix<-function(solve) m<<- solve #set the inverse matrix
  getmatrix<-function() m #get the inverse matrix
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m<-x$getmatrix() #get inverse matrix
  if(!is.null(m)){ #if inverse has value, return value
    message("getting cached data")
    return(m)
  }
  matrix<-x$get() #get matrix, calc inverse and put in cache
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
  ## Return a matrix that is the inverse of 'x'
}

