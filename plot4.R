## Set the working directory
setwd('C:\\Users\\Ognjen\\Documents\\GitHub\\ExData_Plotting1')
attach(consumption)
png(file="plot4.png")
## Set plotting parameters, 2 rows and 2 columns
par(mfrow = c(2,2))

## Plot Global Active Power vs time
plot(Time, Global_active_power,
                       type="l",
                       xlab = "",
                       ylab = "Global Active Power (kilowatts)")

## Plot Voltage vs Time
plot(Time, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")


## Plot sub metering Versus Time 
plot(Time, Sub_metering_1,
     type="l",
     ylab = "Energy sub metering",
     xlab = "")

lines(Time, Sub_metering_2, col="red")
lines(Time, Sub_metering_3, col="blue")

## Add legend
legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), 
       lty=1, bty="n")


## Plot Global Reactive Power vs Time
plot(Time, Global_reactive_power, type = "l", xlab = "datetime")


detach()

dev.off()
