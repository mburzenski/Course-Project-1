setwd("C:/Users/C16Matthew.Burzenski/Documents/Cadet Second Class Year/MATH378/R Projects/Exploratory Data")


rawdata=read.csv("household_power_consumption.txt",sep=";")
data=rawdata[rawdata$Date=="1/2/2007" | rawdata$Date=="2/2/2007",]

#Plot 1

data=data.frame(data)
data[,3]=as.numeric(as.character(data[,3]))

hist(data$Global_active_power,col="red",
     xlab="Global Active Power (kilowatts)",main="Global Active Power")