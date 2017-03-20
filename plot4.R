#Get Data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Converting Dates
time <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Settings
par(mfrow = c(2,2))

#Plot
#dev.copy(png,file = "~/Documents/Data Science/plot4.png", height = 480, width = 480)

#Top Left
plot(time, as.numeric(subData$Global_active_power), ylab = "Global Active Power (kilowatts)", 
     xlab = "", type = "l")

#Top Right
plot(time, as.numeric(subData$Voltage), ylab = "Voltage", 
     xlab = "datetime", type = "l")

#Bottom Left
plot(time, as.numeric(subData$Sub_metering_1), ylab = "Energy sub metering", 
     xlab = "", type = "l", col = "black")
lines(time, as.numeric(subData$Sub_metering_2), type = "l", col = "red")
lines(time, as.numeric(subData$Sub_metering_3), type = "l", col = "blue")
#Annotate
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col = c("black", "red", "blue"),lty = 1, lwd = 2 )
#Bottom Right
plot(time, as.numeric(subData$Global_reactive_power), ylab = "Global_reactive_power", 
     xlab = "datetime", type = "l")



#dev.off()



