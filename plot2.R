#Get Data
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Converting Dates
time <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Plot
dev.copy(png,file = "~/Documents/Data Science/plot2.png", height = 480, width = 480)
plot(time, as.numeric(subData$Global_active_power), ylab = "Global Active Power (kilowatts)", 
     xlab = "", type = "l")
dev.off()




#dev.copy(png,file = "~/Documents/Data Science/plot1.png", height = 480, width = 480)
#dev.off()