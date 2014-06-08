png(file = "plot1.png", width = 480 , height = 480 )
df = read.csv("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=F)
df[,1] = as.Date(df[,1], "%d/%m/%Y" )
beg = as.Date("2007-02-01")
final = as.Date("2007-02-02")
ind = df$Date >= beg & df$Date <= final
df2 = df[ind,]
df2[,3] = as.numeric(df2[,3])
hist(df2$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()