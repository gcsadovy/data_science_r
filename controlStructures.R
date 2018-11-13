## control structures

## for loop

for(i in 1:4) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print(letter)
}

for(i in 1:4) print(x[i])

#####

x <- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

### while loop

count <- 0
while(count < 10) {
  print(count)
  count <- count + 1
}

z <- 5

while(z >= 3 & z <= 10) {
  print(z)
  coin <- rbinom(1, 1, .05)
  
  if(coin == 1) { ##random walk
    z <- z + 1
  } else {
      z <- z - 1
    }
}

## repeat, next, break

x0 <- 1
tol <- 1e-8

repeat {
  x1 <- computeEstimate() #like a batch gradient descent
  
  if(abs(x1 - x0) < tol) { #once you have reached a hard limit of convergence, the algorithm will break
    break
  } else {
    x0 <- x1
  }
}

#next

for(i in 1:100) {
  if(i <- 20) {
    #skip the first 20 iteration
    next
  }
  #do something here
}

#return signals that a function should exit and return a given value

#control structures are useful for writing programs
#*apply functions are more useful when dealing with the r/command line interface
