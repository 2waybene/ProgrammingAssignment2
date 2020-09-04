 ## Simulate some data
  
  
  x <- c(rnorm(10), runif(10), rnorm(10, 1)) 
  
  ## Define some groups with a factor variable > 
  
  f <- gl(3, 10)
  f
  
  


    
tapply(x, f, mean)

    
    
tapply(x, f, mean, simplify = FALSE)
