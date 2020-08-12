## histogram for Global Active Power
## the data is stored under readdata variable. refer readingData.R script.
hist(readdata$Global_active_power,
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     col = "red")