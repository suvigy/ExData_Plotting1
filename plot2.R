library(datasets)

##
## Plots plot2 exercise
##
## Input:
##   data - preprocessed data
##
plot2<-function(data, ylabel="Global Active Power (kilowatts)") {
  with(data, plot(datetime, Global_active_power, type="l", xlab="", ylab=ylabel))  
}

##
##Read, clean and select data
##
data<-readdata("..\\household_power_consumption.txt")


#Plotting
png(filename="plot2.png", width=480, height=480)
plot2(data)
dev.off()