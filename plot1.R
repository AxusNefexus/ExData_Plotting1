consumpt <- read.table("C:/Users/R558/Desktop/household_power_consumption.txt", header = TRUE, sep = ";", colClasses = c("character", "character", rep("numeric",7)), na.strings = "?")

consub <- subset(consumpt, consumpt$Date == "1/2/2007" | consumpt$Date == "2/2/2007")

hist(consub$Global_active_power, col = "Red", main = "Global Active Power", xlab = "KW")

dev.copy(png, file = "plot1.png")

dev.off()
