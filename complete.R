complete <- function(directory, id = 1:332) {
    #make an empty data frame with # rows = # ids
    data <- data.frame("id" = id, "nobs" = 0)
    #make a list of all files in directory
    l1 <- list.files(directory, full.names = TRUE)
    #initialize a count
    count = 1
    #for each file in the list, assign the id to the id, and the nobs 
    #to the complete cases, then indexed in the data frame by count (not the id)
    for(file in l1[id]) {
        data$nobs[count] <- sum(complete.cases(read.csv(file)))
        count = count + 1
    }
    data
}

