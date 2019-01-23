library(dplyr)
dataset <- read.table("./no_version_control/Coursera/Exploratory Data Analysis/Week 1/household_power_consumption.txt",
                      header = TRUE, sep=";", stringsAsFactors = FALSE, dec=".")

data <- dataset %>% filter(Date == "1/2/2007" | Date == "2/2/2007")

data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(data$DateTime, as.numeric(data$Global_active_power), type="l", ylab="Global Active Power (kilowatts)", xlab=" ")
dev.off()