NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
total <- aggregate(Emissions ~ year, NEI, sum)

plot(total$year, total$Emissions, type = "o", col = "darkorchid4", main = expression("Total "~ PM[2.5]~ "Emissions Years"), ylab = expression("Total "~   PM[2.5] ~ "Emissions"), xlab = "Year")

