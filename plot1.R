library(dplyr)
dataset <- read.table("./no_version_control/Coursera/Exploratory Data Analysis/Week 1/household_power_consumption.txt",
                      header = TRUE, sep=";", stringsAsFactors = FALSE, dec=".")

data <- dataset %>% filter(Date == "1/2/2007" | Date == "2/2/2007")

png("plot1.png", width=480, height=480)
hist(as.numeric(data$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()