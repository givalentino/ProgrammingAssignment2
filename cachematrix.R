## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
First we define a special matrix, in which we will set the values of the matrix, then get the values of the matrix, 
and then set the function for inverting the matrix (inverse), and then getting the inverse values of the matrix

makeCacheMatrix <- function(x = matrix()) {
        i<-NULL
        set<-function(y){
                x<<-y
                i<<-NULL
                }
        get<-function() x
        setinverse<-function(inverse) i<<-inverse
        getinverse<-function() i
        list(set=set, get=get,
             setinverse=setinverse,
             getinverse=getinverse)
}


## Write a short comment describing this function
This function determines the inverse of the matrix created above with makeCacheMatrix.
First it checks if the inverse of the matrix has already been calculated; if so, it gets the inverse from the cache, if not it computes the calculation.

cacheSolve <- function(x, ...) {
        i<-x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(i)
                }
        data<-x$get()
        i<-solve(data,...)
        x$setinverse(i)
        i
     
        ## Return a matrix that is the inverse of 'x'
}
