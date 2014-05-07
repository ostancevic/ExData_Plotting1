## Preparation of data

### Load the data


dataFile = "C:\\Users\\Ognjen\\Documents\\Coursera\\Exploratory Data Analysis\\exdata-data-household_power_consumption\\household_power_consumption.txt";
consumption <- read.table(dataFile, 
                          header = TRUE, 
                          sep = ";", 
                          na.strings = "?",
                          colClasses = c(rep("character",2), rep("numeric",7)) )

### Convert first and second columns to Date/Time

consumption$Time <- do.call(paste, c(consumption[c("Date", "Time")], sep=" ")) 

consumption$Time <- strptime(consumption$Time, format = "%d/%m/%Y %H:%M:%S")

consumption$Date <- as.Date(consumption$Date, format = "%d/%m/%Y")

### Restrict to particular dates

consumption <- consumption[consumption$Date %in% c(as.Date("2007-02-01"),as.Date("2007-02-02")),]
