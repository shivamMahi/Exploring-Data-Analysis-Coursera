#removing nulls and storing dataset in  a variable
houseData<- household_power_consumption[complete.cases(household_power_consumption),]

data1 <- subset(houseData, Date %in% c("1/2/2007","2/2/2007"))

data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

with(data1, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

#creating a png file
png("/cloud/project/plot2.png", width=480, height=480)
dev.off()
