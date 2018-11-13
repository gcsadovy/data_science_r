pollutantmean <- function(directory, pollutant, id = 1:332) {
    #make a list of all of the csv files in the dir
    l1 <- list.files(directory, full.names = TRUE)
    lpoll <- as.numeric(c())
    #for each file in the list, open the file, grab all of the specified pollutant data sans NAs
    for(file in l1[id]) {
        x <- read.csv(file)
        x <- x[pollutant]
        lpoll <- append(lpoll, x[!is.na(x)])
    }
    #append all of the pollutant data to a single list
    sum(lpoll) / length(lpoll)
    #sum the list and divide by length
}

