## Set the working directory
setwd('C:\\Users\\Ognjen\\Documents\\GitHub\\ExData_Plotting1')
attach(consumption)
png(file="plot3.png")
par(mfrow = c(1,1))
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
       lty=1)


detach()

dev.off()
