
make.NegLogLik <- function(data, fixed = c(FALSE, FALSE)) {
  params <- fixed
  function(p) {
    params[!fixed] <- p
    mu <- params[1]
    sigma <- params[2]
    
    ## Calculate the Normal density
    a <- -0.5*length(data)*log(2*pi*sigma^2)
    b <- -0.5*sum((data-mu)^2) / (sigma^2)
    -(a + b)
  }
}


## Fix 'sigma' to be equal to 2
nLL <- make.NegLogLik(normals, c(FALSE, 2))

x <- seq(0.5, 1.5, len = 100) 

   ## Evaluate 'nLL()' at every point in 'x'

y <- sapply(x, nLL)
plot(x, exp(-(y - min(y))), type = "l")



nLL (0.5)
