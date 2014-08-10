library(datasets)

##
## Plots plot1 exercise
##
## Input:
##   data - preprocessed data
##
plot1<-function(data) {
  hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")  
}
##
##Read, clean and select data
##
data<-readdata("..\\household_power_consumption.txt")


#plotting
png(filename="plot1.png", width=480, height=480)
plot1(data)
dev.off()