#Read the data and subset it
options("max.print"=30000000)
library(data.table)
data<-fread("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
data<-data.frame(data)
data_1<-subset(data,data$Date=="1/2/2007"|data$Date=="2/2/2007")
#Format the date
data_1$DateTime<-paste(data_1$Date,data_1$Time)
data_1$DateTime<-strptime(data_1$DateTime,format="%e/%m/%Y %H:%M:%S")
#Plot 1
png(file="Plot1.png")
with(data_1,hist(as.numeric(Global_active_power),col=2,main="Global Active Power",
                 xlab="Global Active Power(kilowatts)"))
dev.off()
