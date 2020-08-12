## Creating line plots for different sub-meter readings
## the data is stored under readdata variable. refer readingData.R script.
with(readdata,{
     plot(Sub_metering_1~Datetime, type="l",
          xlab="",ylab="Global Active Power (kilowatts)")
     lines(Sub_metering_2~Datetime,col='Red')
     lines(Sub_metering_3~Datetime,col='Blue')
     })