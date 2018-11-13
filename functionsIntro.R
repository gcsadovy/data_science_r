#functionsIntro

add2 <- function(x, y) {
  x + y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

columnMean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(y[, i], na.rm = removeNA)
  }
  means
}

f <- function(a, b) {
  a*2
} #since the function never uses b, b never gets defined or assigned a value

f <- function(a, b) {
  print(a)
  print(b)
}

#function will execute until it hits a point where an error is caused

myplot <- function(x, y, type = "1", ...) {
  plot(x, y, type = type, ...)
} #... can extend a function when you don't want to copy the entire argument list of the original function

# generic function `...` can be used so that extra arguments can be passed to methods later


make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}
#lexical scoping: if a variable is a free variable, defined within the function, it is defined within the function's parent frame

#scheme, Perl, Python, SBCL (all languages converge to lisp) all support lexical scoping

#optimization

#can use optim, nlm, optimize

#write a "constructor" function
make.negLogLik <- function(data, fixed=c(F,F)) { #log-likelihood
  params <- fixed
  function(p) {
    params[!fixed] <- p
    mu <- params[1]
    sigma <- params[2]
    a <- -0.5*length(data)*log(2*pi*sigma^2)
    b <- -0.5*sum((data-mu)^2) / (sigma^2)
    -(a + b)
  }
}

#may need to return to how to build a constructor function so that I can 
#efficiently use the optimize functions and give the user the ability to 
#be flexible in specifying how certain variables are used, kept fixed, etc
