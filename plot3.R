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

library(ggplot2)

#plot within RStudio
plot(pwrsub2$st
     , pwrsub2$Sub_metering_1, xlab=""
     , ylab="Energy sub metering", type="n")

points(pwrsub2$st, pwrsub2$Sub_metering_1, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_1)
points(pwrsub2$st, pwrsub2$Sub_metering_2, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_2, col="red")
points(pwrsub2$st, pwrsub2$Sub_metering_3, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_3, col="blue")
legend("topright", lty=1,col=c("black", "red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

#output .png file to WD
png(file = "plot3.png", width = 480, height = 480, units = "px")
plot(pwrsub2$st
     , pwrsub2$Sub_metering_1, xlab=""
     , ylab="Energy sub metering", type="n")

points(pwrsub2$st, pwrsub2$Sub_metering_1, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_1)
points(pwrsub2$st, pwrsub2$Sub_metering_2, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_2, col="red")
points(pwrsub2$st, pwrsub2$Sub_metering_3, pch=NA)
lines(pwrsub2$st, pwrsub2$Sub_metering_3, col="blue")
legend("topright", lty=1,col=c("black", "red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

dev.off()  # Close the png file device


