plotting <- function () {
      
data <- "household_power_consumption.txt"
data <- read.csv(data, header = T, sep = ";")
dat1 <- as.Date(as.character(data$Date), format = "%d/%m/%Y")
dat2 <- data[, c(2:9)]
cbind(dat1, dat2) -> Data
sub1 <- Data[which(Data[,"dat1"] == as.Date("2007/02/01")),]
sub2 <- Data[which(Data[,"dat1"] == as.Date("2007/02/02")),]
rbind(sub1, sub2) -> subset
hist(as.numeric(as.character(subset$Global_active_power)), col="red", xlab = "Global Active Power (Kilowatts)", ylab = "Frequency", main = "Global Active Power")

}
