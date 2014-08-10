library(datasets)

#Read, clean and select data
data<-read.table("..\\household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
data<-within(data, datetime<-strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"))
data<-data[, -(1:2)]
data<-data[as.Date(data$datetime) <= as.Date("2007-02-02") & as.Date(data$datetime) >= as.Date("2007-02-01") ,]


#plotting
png(filename="plot1.png", width=480, height=480)
hist(data$Global_active_power, col=2, xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()