setwd("C:/Users/C16Matthew.Burzenski/Documents/Cadet Second Class Year/MATH378/R Projects/Exploratory Data")


rawdata=read.csv("household_power_consumption.txt",sep=";")
data=rawdata[rawdata$Date=="1/2/2007" | rawdata$Date=="2/2/2007",]


data=data.frame(data)
data[,4]=as.numeric(as.character(data[,4]))
data[,5]=as.numeric(as.character(data[,5]))
data[,7]=as.numeric(as.character(data[,7]))
data[,8]=as.numeric(as.character(data[,8]))
data[,9]=as.numeric(as.character(data[,9]))


par(mfrow=c(2,2))
plot(data$Global_active_power,type="l",ylab="Global Active Power",xlab="",xaxt='n')
axis(1,at=c(0,1450,2880),labels=c("Thu","Fri","Sat"))
plot(data$Voltage,type="l",ylab="Voltage",xlab="datetime",xaxt='n')
axis(1,at=c(0,1450,2880),labels=c("Thu","Fri","Sat"))
plot(data$Sub_metering_1, type="l", ylim=c(0,40),ylab="Energy sub metering",xlab="",xaxt='n')
lines(data$Sub_metering_2, type="l", col="red")
lines(data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),lwd=c(2.5,2.5,2.5),col=c("black","red","blue"),cex=.2,xjust=1)
axis(1,at=c(0,1450,2880),labels=c("Thu","Fri","Sat"))
plot(data$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime",xaxt='n')
axis(1,at=c(0,1450,2880),labels=c("Thu","Fri","Sat")) 



