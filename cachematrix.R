## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	cached_data <- NULL
	set <- function(y){
		x <<- y
		cached_data <<- NULL
	}
	get <- function() x
	setinverse <- function(solved) cached_data <<- solved
	getinverse <- function() cached_data
	list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cached_data <- x$getinverse()
        if(!is.null(cached_data)){
        	message("getting cached data")
        	return(cached_data)
        }
        data <- x$get()
        cached_data <- solve(data,...)
        x$setinverse(cached_data)
        cached_data
}
