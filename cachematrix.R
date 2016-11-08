## Put comments here that give an overall description of what your
## functions do

## reconocer el archivo en r. read the r script
#Crear la funcion make cache matrix
## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
  ##cache the inverse matrix as a 'global' by using the <<- assignment
  mat_inv <<- solve(x)
  
  mat_inv
}

##test 1
d=rbind(c(2, 4), c(6, 2))  
d
makeCacheMatrix(d)
mat_inv

## cacheSolve : This function computes the inverse of the special "matrix" 
## returned by  makeCacheMatrix  above. If the inverse has already been 
## calculated (and the matrix has not changed), 
## then  cacheSolve  should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) 
{
  ## If the inverse has already been calculated (and the matrix has not changed)
  if(!is.null(mat_inv)) {
    message("getting cached data")
    ## then  cacheSolve should retrieve the inverse from the cache.
    res <- mat_inv
  }
  else 
  {
    res <-solve(x)
  }
  
  ## Return a matrix that is the inverse of 'x'
  res #Es la solucion o la matriz inversa
}

