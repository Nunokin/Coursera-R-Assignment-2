## These functions will perform a variety of permutations related to matrices

## This function will make an object (matrix class) which is able to cache its own inverse. 

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL
  get <- function() x
  getInverse <- function() {
    if(length(x)%%sqrt(length(x))==0) ## As described in the assignment instructions, this will only work for a square matrix.
      inv <- solve(x)   ##Computing the inverse of a square matrix can be done with the solve function in R.
                            }
 
                                         }


## This function will take the above function and use it to calculate the inverse.
## If the inverse was already determined and none of the input factors have changed, 
## results can be grabbed from cache.

cacheSolve <- function(x, ...) {
  if(!is.atomic(x)){     
    inv <- x$getInverse() 
    if(!is.null(inv)) {
      message("Now accessing cached data...") ##Optional callout for added fancyness.
      return(inv)
    }     
  } else {
    message("No cache for this matrix found - computing inverse now...") ##And again.
    return(makeCacheMatrix(x)$getInverse()) ##Function from first part of this assignment is performed.
  } 
  }
