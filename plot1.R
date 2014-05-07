
setwd('C:\\Users\\Ognjen\\Documents\\GitHub\\ExData_Plotting1')

with(consumption, hist(Global_active_power,col="red", 
                       xlab="Global Active Power (kilowatts)",
                       main = "Global Active Power"))

dev.copy(png, file="plot1.png")
dev.off()
