plotting <- function(plotnumber = c(1:4)){
      
      if(plotnumber > 4){stop("Incorrect Plot Number")}
      
     
      plug <- exists("plotr")
      if(plug == FALSE){
      data <- "household_power_consumption.txt"
      data <- read.csv(data, header = T, sep = ";")
      dat1 <- as.Date(as.character(data$Date), format = "%d/%m/%Y")
      dat2 <- data[, c(2:9)]
      cbind(dat1, dat2) -> Data
      sub1 <- Data[which(Data[,"dat1"] == as.Date("2007/02/01")),]
      sub2 <- Data[which(Data[,"dat1"] == as.Date("2007/02/02")),]
      subset <- rbind(sub1, sub2) 
      DateTime <- as.POSIXct(paste(subset$dat1, as.character(subset$Time)))
      plotr <- cbind(DateTime, subset[,c(3:9)])
      }else{print("Ploting data")}
      
      if(plotnumber == c(1)){
            png("plot1.png", width = 480, height = 480, units = "px")
            hist(as.numeric(as.character(plotr$Global_active_power)), col="red", xlab = "Global Active Power (Kilowatts)", ylab = "Frequency", main = "Global Active Power")
            dev.off()}else{print("Processing")}

      if(plotnumber == c(2)){ 
            png("plot2.png", width = 480, height = 480, units = "px")
            plot(plotr$DateTime, plotr$Global_active_power, type = "l", col="green", xlab = "", ylab = "Global Active Power")
            dev.off()}else{print("Processing")}
      
      if(plotnumber == c(3)){
            png("plot3.png", width = 480, height = 480, units = "px")
            plot(plotr$DateTime, plotr$Sub_metering_1, type = "l", col="black", xlab = "", ylab = "Energy sub Metering")
            lines(plotr$DateTime, plotr$Sub_metering_2, col = "red")
            lines(plotr$DateTime, plotr$Sub_metering_3, col ="blue")
            legend("topright", legend= c(colnames(plotr)[6:8]), col=c("black", "red","blue"), lwd = 1)
            dev.off()
      }else{print("Processing")}
      
      if(plotnumber == c(4)){
            png("plot4.png", width = 480, height = 480)
            par(mfrow = c(2,2))
            plot(plotr$DateTime, plotr$Global_active_power, type = "l", col="black", xlab = "", ylab = "Golbal Active Power")
            plot(plotr$DateTime, plotr$Voltage, type = "l", col = "black", xlab = "datetime", ylab = "Voltage")
            plot(plotr$DateTime, plotr$Sub_metering_1, type = "l", col="black", xlab = "", ylab = "Energy sub Metering")
            lines(plotr$DateTime, plotr$Sub_metering_2, col = "red")
            lines(plotr$DateTime, plotr$Sub_metering_3, col ="blue")
            legend("topright", legend= c(colnames(plotr)[6:8]), col=c("black", "red","blue"), lwd = 1)
            plot(plotr$DateTime, plotr$Global_reactive_power, type="l", col ="black", xlab = "datetime")
            dev.off()
      }else{print("Processing")}
      
      plotr <<-plotr
      print("Done")

}
      
      
      
      
      
      
      
      
      

      
      
      
      
