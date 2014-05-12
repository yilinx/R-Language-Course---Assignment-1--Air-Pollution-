pollutantmean <- function (directory, pollutant, id=1:332){
        
        
        ## 'directory' is a character vector of length 1 
        ## indicating the location of the CSV files
        
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
        
        ### 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        
        directory <- "E:\\Coursera Data Scientist\\R Programming\\Programming Assignment 1\\specdata\\"
        xTotal <- list()
        ConData <- numeric()
        
        for (i in id){
                i <- formatC(i, width=3, flag="0")
                FileLocation <- paste(directory, i, ".csv", sep="")
                x <- read.csv(FileLocation)
                xcol <- x[pollutant]
                xTotal <- rbind(xTotal,xcol)
        
        }
        
        mean(xTotal[,], na.rm=T)
                
}