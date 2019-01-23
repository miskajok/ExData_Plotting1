library(dplyr)
dataset <- read.table("./no_version_control/Coursera/Exploratory Data Analysis/Week 1/household_power_consumption.txt",
                      header = TRUE, sep=";", stringsAsFactors = FALSE, dec=".")

data <- dataset %>% filter(Date == "1/2/2007" | Date == "2/2/2007")

data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(data$DateTime, as.numeric(data$Sub_metering_1), type="l", ylab="Energy sub metering", xlab=" ")
lines(data$DateTime, as.numeric(data$Sub_metering_2), type="l", col='red')
lines(data$DateTime, as.numeric(data$Sub_metering_3), type="l", col='blue')
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()