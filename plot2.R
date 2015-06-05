sample <- read.table("household_power_consumption.txt",header = TRUE, nrows = 20, sep = ";")
classes <- sapply(sample,class)
data <- read.table("household_power_consumption.txt",header = TRUE, sep=";",colClasses = a,na.strings = "?")
data$Date <- as.Date(x = data$Date,format = "%d/%m/%Y")
data <- subset(data, data$Date >= "2007-02-01" & data$Date <= "2007-02-02")


datetime <- paste(set$Date,set$Time)
datetime <- as.POSIXct(strftime(datetime,"%Y-%m-%d %H:%M:%S"))

png("plot2.png",width = 480,height = 480)
plot(datetime,set$Global_active_power,type="l", ylab = "Global Active Power (kilowatts)", xlab="")
dev.off()