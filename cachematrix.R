##Started with example code from Dr. Peng

##function requires matrix vector for argument. 
##reset all variables to NULL
##take argument given, and store inverse matrix into m at
##the global (environment) level

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL 
    set <- function(y) {
        x <<-y
        m <<- NULL
    }
    #calculate 
    get <-function() x
    ##set global variable to inverse of matrix
    setMatrix <- function(invmatrix) m <<- invmatrix 
    ##return cached value
    getMatrix <- function() m
    list(set = set, get = get,
         setMatrix = setMatrix,
         getMatrix = getMatrix)
         print(m)
}


## Started with code example from Dr. Peng
## changed function to have if, else instead of just if

##check to see if global variable is empty
##if variable is not empty then grag data
##if varaible is empty, calculate the inverse of the matrix
##and return that variable

cacheSolve <- function(x, ...) {
    m <- x$getMatrix()
    if(!is.null(m)) {
        message("Getting cached data, please wait")
        return(m)
    } else {
        m <- solve(x$get())
        x$setMatrix(m)
        return(m)
    }
}
