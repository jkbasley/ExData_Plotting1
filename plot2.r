## construct plot2.png

png('plot2.png')

plot(feb_data$DateTime, feb_data$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()