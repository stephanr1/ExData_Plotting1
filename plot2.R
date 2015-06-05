# Creates plot2.png for the Coursera Exploratory Data Analysis Project 1
# "household_power_consumption.txt" must be present in the working directory

# install R - package lubridate
library(lubridate)

# reads data only from dates 2007-02-01 and 2007-02-02
hpc_data<-read.table("household_power_consumption.txt",sep =";", skip = 66637, nrows = 2880)
hpc_date<-dmy(hpc_data[,1])
hpc_time<-hms(hpc_data[,2])
hpc_datetime<-hpc_date+hpc_time


# opens graphic device for png - file
png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

# plots data
plot(hpc_datetime,hpc_data[,3],type="l",xlab = "",ylab ="Global Active Power (kilowatts)")


#closes file
dev.off()