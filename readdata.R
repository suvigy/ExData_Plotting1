##
##Read, clean and select data
## File - path to the input file
##
readdata<-function(file) {
  data<-read.table(file, header=TRUE, sep=";", na.strings="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
  #creating column of type datetime
  data<-within(data, datetime<-strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S"))
  #then remove the first 2 columns
  data<-data[, -(1:2)]
  #select the proper data
  data[as.Date(data$datetime) <= as.Date("2007-02-02") & as.Date(data$datetime) >= as.Date("2007-02-01") ,]
  
}