
##  function struct

make.power <- function(n) {
  z <- 25
  pow <- function(x) {
    cat("z = ", z, "\n") # "\n" is newline
    cat("n = ", n, "\n")
    x^n
  }
  pow
}

##  To use the function
square <- make.power(2)
square(4)

cube<- make.power(3)
cube(4)


ls (environment(cube))


##  A more complicated example

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


set.seed(1)
normals <- rnorm(100, 1, 2)
nLL <- make.NegLogLik(normals)
nLL


ls(environment(nLL))

optim(c(mu = 0, sigma = 1), nLL)$par


nLL <- make.NegLogLik(normals, c(FALSE, 2))
optimize(nLL, c(-1, 3))$minimum


nLL <- make.NegLogLik(normals, c(1, FALSE))
x <- seq(1.7, 1.9, len = 100)

   ## Evaluate 'nLL()' at every point in 'x'
y <- sapply(x, nLL)
plot(x, exp(-(y - min(y))), type = "l")


##===========

y <- 10

f <- function(x) { 
  y <- 2
  y^2 + g(x)
}

g <- function(x) {
  x*y
}

f(3)


