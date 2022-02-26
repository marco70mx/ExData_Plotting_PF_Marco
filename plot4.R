SCC_coalCOMB <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
NEI_coalCOMB <- NEI[NEI$SCC %in% SCC_coalCOMB$SCC,]
totalCoal <- aggregate(Emissions ~ year + type, NEI_coalCOMB, sum)

ggplot(totalCoal, aes(year, Emissions, col = type)) +
  geom_line() +
  geom_point() +
  ggtitle(expression("Total US" ~ PM[2.5] ~ "Coal Comb. Emission by Type and Year")) +
  xlab("Year") +
  ylab(expression("US " ~ PM[2.5] ~ "Coal Comb. Emission")) +
  scale_colour_discrete(name = "Sources") +
  theme(legend.title = element_text(face = "italic"))