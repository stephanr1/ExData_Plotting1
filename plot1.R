# Creates plot1.png for the Coursera Exploratory Data Analysis Project 1
# "household_power_consumption.txt" must be present in the working directory

# reads data only from dates 2007-02-01 and 2007-02-02
# 60 measurements per hour (1 / min) x 48 hours = 2880 values 
hpc_data<-read.table("household_power_consumption.txt",sep =";", skip = 66637, nrows = 2880)

# opens graphic device for png - file
png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

# plots data
hist(hpc_data[,3],main = "Global Active Power",xlab = "Global Active Power (kilowatts)",col = "red")

#closes file
dev.off()