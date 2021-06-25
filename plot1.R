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


DT<-with(pwr, paste(Date,Time))
st<-strptime(DT, "%d/%m/%Y  %H:%M:%S") #convert time as character to date time
wd<-weekdays(st, abbreviate = TRUE )
pwr<-cbind(pwr,st,wd) #add the column onto the existing table

pwr$Global_active_power<-as.numeric(pwr$Global_active_power)#convert G_l_a to numeric


sd2<-subset(pwr, st>="2007-02-01") #subset start date
pwrsub2<-subset(sd, st<="2007-02-03") #subset end date

#create histogram in RStudio
hist(pwrsub2$Global_active_power
     , col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")


#output PNG file WD
png(file = "plot1.png", width = 480, height = 480, units = "px")
hist(pwrsub2$Global_active_power
     , col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

#construct .png file from plot1
dev.off()  # Close the png file device