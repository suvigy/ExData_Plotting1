library(datasets)

plot4<-function(data) {
  par(mfrow=c(2,2), mar=c(5, 4, 4, 2)+0.1, oma=c(0, 0, 0, 0))
  plot2(data, "Global Active Power")
  with(data, plot(datetime, Voltage, type="l"))
  plot3(data)
  with(data, plot(datetime, Global_reactive_power, type="l"))
}

##
##Read, clean and select data
##
data<-readdata("..\\household_power_consumption.txt")

png(filename="plot4.png", width=480, height=480)
plot4(data)
dev.off()