consumpt <- read.table("C:/Users/R558/Desktop/household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)), na.strings = "?")

consub <- subset(consumpt, consumpt$Date == "1/2/2007" | consumpt$Date == "2/2/2007")

consub$Date <- as.Date(consub$Date, format = "%d/%m/%Y")

consub$DateTime <- as.POSIXct(paste(consub$Date, consub$Time))

plot(consub$DateTime, consub$Sub_metering_1, "n", xlab = "", ylab = "Energy Sub Metering")

points(consub$DateTime, consub$Sub_metering_1, type = "line")

points(consub$DateTime, consub$Sub_metering_2, type = "line", col = "red")

points(consub$DateTime, consub$Sub_metering_3, type = "line", col = "blue")

legend("Topright",legend =  c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3"), col = c("Black", "Red", "Blue"), lty = c(1,1,1))

dev.copy(png, file = "plot3.png")
dev.off()
