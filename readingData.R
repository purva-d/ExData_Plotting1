## Specifying file location
filepath <- ".//Data//household_power_consumption.txt"
## reading only data for 1 and 2 january
readdata <- read.table(text = grep("^[1,2]/2/2007", readLines(filepath), value = TRUE),
                       col.names = c("Date","Time","Global_active_power","Global_reactive_power",
                                     "Voltage","Global_intensity",
                                     "Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                       sep = ";", header = TRUE
)
## Reading Date as date object and concatenating it with time
datetime <- paste(as.Date(readdata$Date, format = "%d/%m/%Y"), readdata$Time)
## PosixIt form
readdata$Datetime <- as.POSIXct(datetime)
typeof(readdata$Datetime)
## Save file and close device
#dev.copy(png,"plot1.png", width=480, height=480)
#dev.off()

