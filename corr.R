corr <- function(directory, threshold = 0) {
    #make a list of flies within directory and empty numeric vector
    l1 <- list.files(directory, full.names = T)
    v1 <- as.numeric(c())
    #apply a threshold for complete cases to the list
    for(file in l1) {
        x <- read.csv(file)
        if(sum(complete.cases(x)) > threshold) {
            v1 <- append(v1, cor(x$sulfate, x$nitrate, use = "complete.obs"))
        }
    v1
    }
    #calculate correlation between sulfate and nitrate 
    #for monitor locations where # comp.cases on all variables
    #is > threshold
}