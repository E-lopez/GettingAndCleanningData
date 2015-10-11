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
      png("plot2.png")
      plot(plot$DateTime, plot$Global_active_power, type = "l", col="green", xlab = "", ylab = "Global Active Power")
      dev.off()
}