#Plot 4
png(file="Plot4.png")
par(mfrow=c(2,2))
with(data_1,{plot(as.numeric(Global_active_power),type="l",xaxt="n",xlab="",ylab="Global Active Power(kilowatts)")
max = length(data_1$Global_active_power)
axis(1, at=c(0,max/2.0,max), lab=c("Thu","Fri","Sat"))#Theupper left part of the plot
plot(as.numeric(Voltage),type="l",xaxt="n",xlab="datetime",ylab="Voltage")
max = length(data_1$Global_active_power)
axis(1, at=c(0,max/2.0,max), lab=c("Thu","Fri","Sat"))#The upper right part
plot(as.numeric(Sub_metering_1),type="l",ylab="Energy sub metering",xlab="",xaxt="n")
lines(as.numeric(Sub_metering_2),type="l",col="red")
lines(as.numeric(Sub_metering_3),type="l",col="blue")
legend("topright", c("Sub_metering1","Sub_metering2","Sub_metering3"),lty=c(1,1,1),col=c("black", "blue","red"))
max = length(data_1$Global_active_power)
axis(1, at=c(0,max/2.0,max), lab=c("Thu","Fri","Sat"))#The lower left part
plot(as.numeric(Global_reactive_power),type="l",xaxt="n",xlab="datetime",ylab="Global Reactive Power")
max = length(data_1$Global_active_power)
axis(1, at=c(0,max/2.0,max), lab=c("Thu","Fri","Sat"))#The lower right part
})
dev.off()
