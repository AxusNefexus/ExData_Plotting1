consumpt <- read.table("C:/Users/R558/Desktop/household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)), na.strings = "?")

consub <- subset(consumpt, consumpt$Date == "1/2/2007" | consumpt$Date == "2/2/2007")

consub$Date <- as.Date(consub$Date, format = "%d/%m/%Y")

consub$DateTime <- as.POSIXct(paste(consub$Date, consub$Time))

plot(consub$DateTime, consub$Global_active_power, type = "line", xlab = "", ylab = "Global Active Powerin KW")

dev.copy(png, file = "plot2.png")

dev.off()
