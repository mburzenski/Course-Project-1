setwd("C:/Users/C16Matthew.Burzenski/Documents/Cadet Second Class Year/MATH378/R Projects/Exploratory Data")


rawdata=read.csv("household_power_consumption.txt",sep=";")
data=rawdata[rawdata$Date=="1/2/2007" | rawdata$Date=="2/2/2007",]

plot(data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="",xaxt='n')
axis(1,at=c(0,1450,2880),labels=c("Thu","Fri","Sat"))