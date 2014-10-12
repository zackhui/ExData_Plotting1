#Plot 2
png(file="Plot2.png")
with(data_1,plot(as.numeric(Global_active_power),type="l",xaxt="n",xlab="",ylab="Global Active Power(kilowatts)"))
max = length(data_1$Global_active_power)
axis(1, at=c(0,max/2.0,max), lab=c("Thu","Fri","Sat"))
dev.off()
