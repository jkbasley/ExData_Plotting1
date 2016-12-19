## construct plot1.png

png('plot1.png')
hist(feb_data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()