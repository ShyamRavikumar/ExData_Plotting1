sample <- read.table("household_power_consumption.txt",header = TRUE, nrows = 20, sep = ";")
classes <- sapply(sample,class)
data <- read.table("household_power_consumption.txt",header = TRUE, sep=";",colClasses = a,na.strings = "?")
data$Date <- as.Date(x = data$Date,format = "%d/%m/%Y")
data <- subset(data, data$Date >= "2007-02-01" & data$Date <= "2007-02-02")

datetime <- paste(set$Date,set$Time)
datetime <- as.POSIXct(strftime(datetime,"%Y-%m-%d %H:%M:%S"))
png("plot4.png",width = 480,height = 480)
par(mfrow =c(2,2))

with(set, {
    #FIRST
    plot(datetime,set$Global_active_power,type="l", ylab = "Global Active Power (kilowatts)", xlab="")
    #SECOND
    plot(datetime,set$Voltage,type="l",ylab="Voltage",xlab="datetime")
    #THIRD
    plot(datetime,set$Sub_metering_1,type = "l",ylab="Energy sub metering",xlab="")
    lines(datetime,set$Sub_metering_2,col="red")
    lines(datetime,set$Sub_metering_3,col="blue")
    legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
           lty=c("solid","solid","solid"),col=c("black","red","blue"), bty="n",cex=0.7)
    #FOURTH
    plot(datetime,set$Global_reactive_power,type="l",ylab="Global Reactive Power",xlab="datetime")
    
    
})
dev.off()
