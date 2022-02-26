baltimoreC <- subset(NEI, NEI$fips == "24510")

tBaltimore <- aggregate(Emissions ~ year, baltimoreC, sum)

plot(tBaltimore$year, tBaltimore$Emissions, type = "o", main = expression("Total Baltimore" ~ PM[2.5] ~ "Emissions by Year"), xlab = "Year", ylab = expression("Total Baltimore "~ PM[2.5] ~ "Emissions"), col = "lawngreen")