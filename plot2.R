DT <- read.csv("household_power_consumption.txt", colClasses="character", sep=";")

subDT <- subset(DT, DT$Date=="1/2/2007" | DT$Date=="2/2/2007")
subDT$DateTime <- paste(subDT$Date, subDT$Time)
subDT$DateTime <- as.POSIXct(paste(subDT$Date, subDT$Time, sep = ' '), format = '%d/%m/%Y %H:%M:%S')
subDT$Global_active_power <- as.numeric(subDT$Global_active_power)

png(file = "plot2.png", width = 480, height = 480)
plot(subDT$DateTime, subDT$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()