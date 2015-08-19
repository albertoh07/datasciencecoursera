
#Assignment: Write a function named 'pollutantmean' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA. A prototype of the function is as follows

#Creating the pollutantmean function

pollutantmean <- function(directory, pollutant, id = 1:332) {

    source("getfiles.R")
    
    allData <- numeric()
    
    for (i in id) 
    {
        filename <- getfiles(directory, i)
        
        data <- read.csv(filename)
        
        if (pollutant == "sulfate") {
            allData <- c(allData, data$sulfate)
        } else if (pollutant == "nitrate") {
            allData <- c(allData, data$nitrate)
        }
    }
    mean(allData, na.rm = TRUE)
}


#At the console
# Calling the text.R file: > source("pollutantmean.R")
# Call the function: > pollutantmean("specdata", "sulfate", 1:10)
# [1] 4.064128
