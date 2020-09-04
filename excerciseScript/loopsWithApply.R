##  loopsWtihlapply.R
##  jianying
##==============================

aFewApplies <- c("lapply", "sapply", "apply", "tapply", "mapply")

apply(as.matrix(aFewApplies),1,function(x) {cat(x); str(paste0(x)) ; cat("\t")})

##  apply is NOT necessarily faster than a for loop

## lapply: applies a function to a list
## apply: applies to a margin to a matrix


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

str(apply)
x <- matrix (rnorm(200), 20, 10)
apply (x, 2, mean)
apply (x, 1, sum)
apply (x, 1, quantile, probs = c(0.25, 0.75))
