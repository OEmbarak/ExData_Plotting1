# Plot Number 1
# Let us read the data 
data_set <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
names(data_set) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage","Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data_set <- subset(data_set, data_set$Date == "1/2/2007" | data_set$Date == "2/2/2007")

##********************* Ploting *******************************
# Data Plotting   
png(filename = 'plot1.png', width = 480, height = 480, units='px')  
# plot figure  
with(data_set, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))  
# close device  
dev.off()  