## Set the working directory
setwd('C:\\Users\\Ognjen\\Documents\\GitHub\\ExData_Plotting1')
png(file="plot1.png")
par(mfrow = c(1,1))
## Plot histogram of Global Active Power
with(consumption, hist(Global_active_power,col="red", 
                       xlab="Global Active Power (kilowatts)",
                       main = "Global Active Power"))

dev.off()
