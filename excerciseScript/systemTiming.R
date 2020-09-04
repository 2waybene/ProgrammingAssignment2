library(parallel)
library(foreach)
library(doParallel)


numCores <- detectCores()/2
cl <- parallel::makeCluster(numCores)
doParallel::registerDoParallel(cl)



hilbert <- function(n) {
  i <- 1:n
  1 / outer(i - 1, i, "+")
}


x <- hilbert(1000)
system.time(svd(x))

