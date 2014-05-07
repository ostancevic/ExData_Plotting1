## Set the working directory
setwd('C:\\Users\\Ognjen\\Documents\\GitHub\\ExData_Plotting1')

## Plot Global Active Power vs time
with(consumption, plot(Time, Global_active_power,
                       type="l",
                       ylab = "Global Active Power (kilowatts)"))

## Save to png
dev.copy(png, file="plot2.png")
dev.off()

