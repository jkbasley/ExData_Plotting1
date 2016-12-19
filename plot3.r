## construct plot3.png

png('plot3.png')

plot(feb_data$DateTime, feb_data$Sub_metering_1, type = "l", xlab = "", ylab = "Emergy sub metering")
lines(feb_data$DateTime, feb_data$Sub_metering_2, col = "red")
lines(feb_data$DateTime, feb_data$Sub_metering_3, col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1), col = c("black", "red", "blue"))

dev.off()