DT <- read.csv("household_power_consumption.txt", colClasses="character", sep=";")
DT$Date <- strptime(DT$Date, "%d/%m/%Y")

subDT <- subset(DT, DT$Date=="2007-02-01" | DT$Date=="2007-02-02")
subDT$Global_active_power <- as.numeric(subDT$Global_active_power)

png(file = "plot1.png", width = 480, height = 480)
hist(subDT$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()