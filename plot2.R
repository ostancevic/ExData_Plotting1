## Set the working directory
setwd('C:\\Users\\Ognjen\\Documents\\GitHub\\ExData_Plotting1')
png(file="plot2.png")
par(mfrow = c(1,1))
## Plot Global Active Power vs time
with(consumption, plot(Time, Global_active_power,
                       type="l",
                       xlab = "",
                       ylab = "Global Active Power (kilowatts)"))

dev.off()

