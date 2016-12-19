## set Working Directory to access File
setwd("D:/Users/jbasley/Documents/R Programming/Exploratory Data Analysis")
library(lubridate)

## read, subset and clean the required data from the file
data <- read.table("exdata-data-household_power_consumption/household_power_consumption.txt", na.strings = "?", 
                    sep=";", header = TRUE)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

feb_data <- data[data$Date >= "2007/02/01" & data$Date <= "2007/02/02", ]
feb_data$Time <- strptime(x = as.character(feb_data$Time), format = "%H:%M:%S")
feb_data$Time <- format(feb_data$Time, "%H:%M:%S")
rm(data)
