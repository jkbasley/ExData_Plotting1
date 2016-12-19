## construct plot4.png

png('plot4.png')

par(mfrow=c(2,2))
plot(feb_data$DateTime, feb_data$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power")

plot(feb_data$DateTime, feb_data$Voltage,type = "l", xlab = "datetime", ylab = "Voltage")

plot(feb_data$DateTime, feb_data$Sub_metering_1, type = "l", xlab = "", ylab = "Emergy sub metering")
lines(feb_data$DateTime, feb_data$Sub_metering_2, col = "red")
lines(feb_data$DateTime, feb_data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1), col = c("black", "red", "blue"))

plot(feb_data$DateTime, feb_data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_Power")

dev.off()