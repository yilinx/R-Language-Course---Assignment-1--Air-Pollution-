corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
        
        directory <- "E:\\Coursera Data Scientist\\R Programming\\Programming Assignment 1\\specdata\\"
        IdList <- numeric()
        CorList <- numeric()
        source("complete.R")
        
        CallMon <- complete(,)
        IdVal <- CallMon[CallMon$nobs > threshold, "id"]
        IdList <- c(IdList,IdVal)
        
        for(i in IdList) {
                inew <- formatC(i, width=3, flag="0")
                FileLocation <- paste(directory, inew, ".csv", sep="")
                x <- read.csv(FileLocation)
                CCList <- complete.cases (x["sulfate"],x["nitrate"])
                CCVal <- x[CCList,c("sulfate","nitrate")]
                CorVal <- cor(CCVal$sulfate,CCVal$nitrate)
                CorList <- c(CorList,CorVal)
        }
        CorList
}