library(datasets)

plot3<-function(data) {
  with(data, plot(datetime, Sub_metering_1, type="n", ylab="Energy sub metering", xlab=""))
  with(data, points(datetime, Sub_metering_1, col="black", type="l"))
  with(data, points(datetime, Sub_metering_2, col="red", type="l"))
  with(data, points(datetime, Sub_metering_3, col="blue", type="l"))
  legend("topright", lty="solid",col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}

##
##Read, clean and select data
##
data<-readdata("..\\household_power_consumption.txt")

#Plotting
png(filename="plot3.png", width=480, height=480)
plot3(data)
dev.off()