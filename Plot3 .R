# Plot Number 3
# Let us read the data   
files <- file('household_power_consumption.txt')  
data_set <- read.table(text = grep("^[1,2]/2/2007",readLines(files),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')  

# convert data and time to specific format  
data_set$Date <- as.Date(data_set$Date, format = '%d/%m/%Y')  
data_set$DateTime <- as.POSIXct(paste(data_set$Date, data_set$Time))  


# Data Plotting  
# open device  
png(filename = 'plot3.png', width = 480, height = 480, units='px')  
# plot figure  
Sys.setlocale(category = "LC_ALL", locale = "english")  
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')  
lines(data$DateTime, data$Sub_metering_2, col = 'red')  
lines(data$DateTime, data$Sub_metering_3, col = 'blue')  
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)  
# close device  
dev.off() 