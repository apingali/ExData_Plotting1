## Assignment 1 on Plotting
## Set the Working Directory to the directory where the file is created
setwd("/Users/Ashwin/Documents/Ashwin Docs/Coursera/Data Science/Exploratory Data Analysis")
## Read the file household power consumption data into a variable called power
power<- read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses = c('character', 'character', 'numeric','numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'),na.strings='?')
## Convert power$Date into Date 
power$DateTime <- strptime(paste(power$Date, power$Time),format= "%d/%m/%Y %H:%M:%S")

## Create a dataframe with the subset of values for dates 2007-02-01 and 2007-02-02
Power_Subset <- subset(power,as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))
png(filename = "Plot3.png", width = 480, height = 480, units = "px", pointsize = 12)
plot(Power_Subset$DateTime, Power_Subset$Sub_metering_1, pch=NA, xlab="", ylab="Energy sub metering")
lines(Power_Subset$DateTime, Power_Subset$Sub_metering_1)
lines(Power_Subset$DateTime, Power_Subset$Sub_metering_2, col='red')
lines(Power_Subset$DateTime, Power_Subset$Sub_metering_3, col='blue')
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1),col = c('black', 'red', 'blue'))
dev.off()
