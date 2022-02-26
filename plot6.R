BMV_LAMV <- subset(NEI, NEI$fips %in% c("24510","06037") & NEI$type == "ON-ROAD")
BMV_LAMVAGG <- aggregate(Emissions ~ year + fips, BMV_LAMV, sum)

ggplot(BMV_LAMVAGG, aes(year, Emissions, col = fips)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Compare Baltimore and Los Angeles" ~ PM[2.5] ~ "Motor Vehicle Emissions")) +
  labs(x = "Year", y = expression("Motor Vehicle Emissions") ) +
  scale_colour_discrete(name = "City", labels = c("Los Angeles", "Baltimore")) +
  theme(legend.title = element_text(face = "italic"))