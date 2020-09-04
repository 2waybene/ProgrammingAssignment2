##  loopsWtihlapply.R
##  jianying
##==============================

aFewApplies <- c("lapply", "sapply", "apply", "tapply", "mapply")

##  apply is NOT necessarily faster than a for loop


# lapply


require(stats); require(graphics)

##  with the default function
x <- list(a = 1:10, b = rnorm(10))
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
# compute the list mean for each list element
lapply(x, mean)
sapply(x, mean)

##  with a customize function
x <- list(a=matrix(1:4, 2,2), b=matrix(1:6,3,2))
lapply (x, function(elt) elt[,1])
sapply (x, function(elt) elt[,1])

