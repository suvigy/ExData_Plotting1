library(datasets)

##
##Read, clean and select data
##
data<-read.table("..\\household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
#creating column of type datetime
data<-within(data, datetime<-strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"))
#then remove the first 2 columns
data<-data[, -(1:2)]
#select the proper data
data<-data[as.Date(data$datetime) <= as.Date("2007-02-02") & as.Date(data$datetime) >= as.Date("2007-02-01") ,]


#Plotting
png(filename="plot2.png", width=480, height=480)
with(data, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()