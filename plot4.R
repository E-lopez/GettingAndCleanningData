plotting <- function () {
      
      data <- "household_power_consumption.txt"
      data <- read.csv(data, header = T, sep = ";")
      dat1 <- as.Date(as.character(data$Date), format = "%d/%m/%Y")
      dat2 <- data[, c(2:9)]
      cbind(dat1, dat2) -> Data
      sub1 <- Data[which(Data[,"dat1"] == as.Date("2007/02/01")),]
      sub2 <- Data[which(Data[,"dat1"] == as.Date("2007/02/02")),]
      subset <- rbind(sub1, sub2) 
      DateTime <- as.POSIXct(paste(subset$dat1, as.character(subset$Time)))
      plot <- cbind(DateTime, subset[,c(3:9)]) 
      
      png("plot4.png", width = 480, height = 480)
      par(mfrow = c(2,2))
      plot(plot$DateTime, plot$Global_active_power, type = "l", col="black", xlab = "", ylab = "Golbal Active Power")
      plot(plot$DateTime, plot$Voltage, type = "l", col = "black", xlab = "datetime", ylab = "Voltage")
      plot(plot$DateTime, plot$Sub_metering_1, type = "l", col="black", xlab = "", ylab = "Energy sub Metering")
      lines(plot$DateTime, plot$Sub_metering_2, col = "red")
      lines(plot$DateTime, plot$Sub_metering_3, col ="blue")
      legend("topright", legend= c(colnames(plot)[6:8]), col=c("black", "red","blue"), lwd = 1)
      plot(plot$DateTime, plot$Global_reactive_power, type="l", col ="black", xlab = "datetime")
      dev.off()
}