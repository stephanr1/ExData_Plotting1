# Creates plot3.png for the Coursera Exploratory Data Analysis Project 1
# "household_power_consumption.txt" must be present in the working directory

# install R - package lubridate
library(lubridate)

# reads data only from dates 2007-02-01 and 2007-02-02
hpc_data <- read.table("household_power_consumption.txt", sep=";", skip = 66637, nrows = 2880)
hpc_date<-dmy(hpc_data[,1])
hpc_time<-hms(hpc_data[,2])
hpc_datetime<-hpc_date+hpc_time

# opens graphic device for png - file
png(filename = "plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

# plots data
colorset<-c("black","red","blue")
plot(hpc_datetime,hpc_data[,7],type="l",xlab = "",ylab ="Energy sub metering",col=colorset[[1]])
lines(hpc_datetime,hpc_data[,8],col=colorset[[2]])
lines(hpc_datetime,hpc_data[,9],col=colorset[[3]])
legend(x="topright",lty = 1, col = colorset, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#closes file
dev.off()