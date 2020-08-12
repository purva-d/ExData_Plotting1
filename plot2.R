## global active power with respect to date time
## the data is stored under readdata variable. refer readingData.R script.
with(readdata,plot(Global_active_power~Datetime,
                   type = "l",
                   xlab = "",
                   ylab = "Global Active Power (kilowatts)"))