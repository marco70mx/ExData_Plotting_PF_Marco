MotorV_Bal <- subset(NEI, NEI$fips == "24510" & NEI$type == "ON-ROAD")
MotorV_BalAG <- aggregate(Emissions ~ year, MotorV_Bal, sum)

ggplot(MotorV_BalAG, aes(year, Emissions)) +
  geom_line(col = "steelblue3") +
  geom_point(col = "steelblue3") +
  ggtitle(expression("Baltimore " ~ PM[2.5] ~ "Emissions M_V by Year")) +
  xlab("Year") +
  ylab(expression(~PM[2.5]~ "Emissions M_V"))