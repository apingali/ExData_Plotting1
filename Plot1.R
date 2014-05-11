## Assignment 1 on Plotting
## Set the Working Directory to the directory where the file is created
setwd("/Users/Ashwin/Documents/Ashwin Docs/Coursera/Data Science/Exploratory Data Analysis")
## Read the file household power consumption data into a variable called power
power<- read.table("household_power_consumption.txt",header=TRUE,sep=";")
## Convert power$Date into Date 
power$Date <- as.Date(power$Date ,format="%d/%m/%Y")
## Convert power$Date into Date 
power$Time<-strptime(power$Time,format="%H:%M:%S")
## Create a dataframe with the subset of values for dates 2007-02-01 and 2007-02-02
Power_Subset <- subset(power,power$Date=="2007-02-01"|power$Date=="2007-02-02")
png(filename = "Plot1.png", width = 480, height = 480, units = "px", pointsize = 12)
hist(as.numeric(Power_Subset$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
