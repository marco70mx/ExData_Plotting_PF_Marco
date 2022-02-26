library(ggplot2)
baltimoreC <- subset(NEI, NEI$fips == "24510")
baltimoreT <- aggregate(Emissions ~ year + type, baltimoreC, sum)

ggplot(baltimoreT, aes(year, Emissions, col = type)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("T. Baltimore " ~ PM[2.5] ~ "Emissions by Type and Year")) +
  ylab(expression("T. Baltimore " ~ PM[2.5] ~ "Emissions")) +
  xlab("Year") +
  scale_colour_discrete(name = "Sources") +
  theme(legend.title = element_text(face = "italic"))