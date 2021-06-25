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



#Create time series line chart ylab="Global Active Power (kilowatts)" x axis is time series with labes of days of the week
library(ggplot2)

plot(pwrsub2$st
     , pwrsub2$Global_active_power, xlab=""
     , ylab="Global Active Power (kilowatts)", pch=NA)


lines(pwrsub2$st, pwrsub2$Global_active_power)


#outpu plot 2 as .png file
png(file = "plot2.png", width = 480, height = 480, units = "px")

plot(pwrsub2$st
     , pwrsub2$Global_active_power, xlab=""
     , ylab="Global Active Power (kilowatts)", pch=NA)


lines(pwrsub2$st, pwrsub2$Global_active_power)




dev.off()  # Close the png file device
