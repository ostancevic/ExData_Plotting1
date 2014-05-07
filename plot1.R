## Set the working directory
setwd('C:\\Users\\Ognjen\\Documents\\GitHub\\ExData_Plotting1')

## Plot histogram of Global Active Power
with(consumption, hist(Global_active_power,col="red", 
                       xlab="Global Active Power (kilowatts)",
                       main = "Global Active Power"))

## Save to png
dev.copy(png, file="plot1.png")
dev.off()
