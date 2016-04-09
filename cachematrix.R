## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                y <<- x
                m <<- NULL
        }
        get <- function() y
        setmatrix <- function(inv) m <<- inv
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix ,
             getmatrix = getmatrix )
}

## Write a short comment describing this function
cacheSolve <- function(j) {
        ## Return a matrix that is the inverse of 'x'
        
        m =j$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        mat.data <- j$get()
        inverse <- solve(mat.data)
	      j$setmatrix(inverse)
        return(inverse)
}
