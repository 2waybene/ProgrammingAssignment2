printmessage2 <- function (x){
  if (is.na(x))
    print ("x is a missing value!")
  else if (x > 0)
    print ("x is greater than zero")
  else
    print ("X is less than zero")
  invisible(x)
  
}

x <- log(-1)
printmessage2(x)

