#if file exists command
if(!file.exists("./plotting")){dir.create("./plotting")}

##fileurl 
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

##downloadfile from URL and store in folder peerreview
download.file(fileurl,destfile="./plotting/plotting.zip", method = "curl")

##unzip folder command
unzip(zipfile="./plotting/plotting.zip", exdir="./plotting")


fileloc<-"./plotting/household_power_consumption.txt"

pwr<-read.table(fileloc, header=TRUE, sep=";")
#using dplyr package
library(dplyr)

par(mfrow = c(2,2), mar=c(4,4,2,2))

#plot2
plot(pwrsub2$st
     , pwrsub2$Global_active_power, xlab=""
     , ylab="Global Active Power (kilowatts)", pch=NA)


lines(pwrsub2$st, pwrsub2$Global_active_power)


#Plot4.2 new
plot(pwrsub2$st
     , pwrsub2$Voltage, xlab="datetime"
     , ylab="Voltage", pch=NA)


lines(pwrsub2$st, pwrsub2$Voltage)


#plot3

plot(pwrsub2$st
     , pwrsub2$Sub_metering_1, xlab=""
     , ylab="Energy sub metering", type="n")

points(pwrsub2$st, pwrsub2$Sub_metering_1, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_1)
points(pwrsub2$st, pwrsub2$Sub_metering_2, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_2, col="red")
points(pwrsub2$st, pwrsub2$Sub_metering_3, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_3, col="blue")
legend("topright", lty=1,col=c("black", "red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), bty="n")


#plot4.4 new
plot(pwrsub2$st
     , pwrsub2$Global_reactive_power, xlab="datetime"
     , ylab="Global_reactive_power", pch=NA)


lines(pwrsub2$st, pwrsub2$Global_reactive_power)



png(file = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2), mar=c(4,4,2,2))

#plot2
plot(pwrsub2$st
     , pwrsub2$Global_active_power, xlab=""
     , ylab="Global Active Power (kilowatts)", pch=NA)


lines(pwrsub2$st, pwrsub2$Global_active_power)


#Plot4.2 new
plot(pwrsub2$st
, pwrsub2$Voltage, xlab="datetime"
, ylab="Voltage", pch=NA)


lines(pwrsub2$st, pwrsub2$Voltage)


#plot3

plot(pwrsub2$st
     , pwrsub2$Sub_metering_1, xlab=""
     , ylab="Energy sub metering", type="n")

points(pwrsub2$st, pwrsub2$Sub_metering_1, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_1)
points(pwrsub2$st, pwrsub2$Sub_metering_2, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_2, col="red")
points(pwrsub2$st, pwrsub2$Sub_metering_3, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_3, col="blue")
legend("topright", lty=1,col=c("black", "red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), bty="n")


#plot4.4 new
plot(pwrsub2$st
     , pwrsub2$Global_reactive_power, xlab="datetime"
     , ylab="Global_reactive_power", pch=NA)


lines(pwrsub2$st, pwrsub2$Global_reactive_power)

dev.off()  # Close the png file device


