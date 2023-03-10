complete <- function(directory, id = 1:332){
    
    resu <- data.frame(id=numeric(0), nobs=numeric(0))
    for(monitor in id){
     path <- paste(getwd(), "/", directory, "/", sprintf("%03d", monitor), ".csv", sep = "")
    monitor_data <- read.csv(path)
    interested_data <- monitor_data[(!is.na(monitor_data$sulfate)), ]
    interested_data <- interested_data[(!is.na(interested_data$nitrate)), ]
     nobs <- nrow(interested_data)
   results <- rbind(results, data.frame(id=monitor, nobs=nobs))
    }
    res
}