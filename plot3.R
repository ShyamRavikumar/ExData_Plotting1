sample <- read.table("household_power_consumption.txt",header = TRUE, nrows = 20, sep = ";")
classes <- sapply(sample,class)
data <- read.table("household_power_consumption.txt",header = TRUE, sep=";",colClasses = a,na.strings = "?")
data$Date <- as.Date(x = data$Date,format = "%d/%m/%Y")
data <- subset(data, data$Date >= "2007-02-01" & data$Date <= "2007-02-02")

datetime <- paste(set$Date,set$Time)
datetime <- as.POSIXct(strftime(datetime,"%Y-%m-%d %H:%M:%S"))
png("plot3.png",width = 480,height = 480)
with(set, {
    plot(datetime,set$Sub_metering_1,type = "l",ylab="Energy sub metering",xlab="")
    lines(datetime,set$Sub_metering_2,col="red")
    lines(datetime,set$Sub_metering_3,col="blue")
    legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
           lty=c("solid","solid","solid"),col=c("black","red","blue"))
    
    
})
dev.off()
