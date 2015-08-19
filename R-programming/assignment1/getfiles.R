#We must be able to get each file. We have to create a function to look for each csv file.
#Make sure you data file is in the working directory.

getfiles <- function(directory, obs) {  
    if (obs < 10) {
        filename = paste(directory, "/","00", obs, ".csv", sep="")
    } else if (obs >= 10 && obs < 100) {
        filename = paste(directory, "/", "0", obs, ".csv", sep="")
    } else {
        filename = paste(directory, "/", obs, ".csv", sep="")
    }
}