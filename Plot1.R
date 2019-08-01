#removing nulls and storing dataset in  a variable
houseData<- household_power_consumption[complete.cases(household_power_consumption),]

#getting basic information of dataset
str(houseData)
dim(houseData)
names(houseData)
head(houseData)

houseData<-transform(houseData,as.numeric(houseData$Global_active_power))

#we want to analyse dataset of only 2 days
data1 <- subset(houseData, Date %in% c("1/2/2007","2/2/2007"))

#1)global active power
par(mfrow = c(1, 1))
hist(as.numeric(data1$Global_active_power),main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red",col.axis="blue",col.lab="green",col.main="brown")

#creating a png file
png("/cloud/project/plot1.png", width=480, height=480)
dev.off()
