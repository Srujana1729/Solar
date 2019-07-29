install.packages("data.table")
install.packages("tidyverse")
install.packages("usmap")
library("data.table")
library("tidyverse")
library("usmap")

SolarRadiation <- fread("nsrd.csv")
summary(SolarRadiation)
class(SolarRadiation$avglo)

SolarRadiation <- SolarRadiation[!grep("13", SolarRadiation$month),] 
colnames(SolarRadiation)[3] <- "state"

AvgRadByState <- SolarRadiation %>% 
  group_by(state) %>% 
  summarise(avg_rad = mean(avglo))
plot_usmap(data = AvgRadByState, values = "avg_rad", 
           lines = "blue", labels = TRUE) + 
  scale_fill_continuous(low = "white", high = "blue", 
                        name = "Average Radiation", label = scales::comma) + 
  theme(legend.position = "right")

AvgRadByCity <- subset(SolarRadiation, state == "AZ") 

c <- AvgRadByCity %>%
  group_by(month) %>%
  ggplot(aes(x = month, y = avglo, color = year)) +
  geom_point(size= 3) + 
  scale_x_discrete(name ="Month", 
                     limits=c("January","February","March", "April", "May", "June",
                              "July", "August", "September", "October", "November", "December")) + 
  scale_y_continuous(name="Average Monthly Radiation")
plot(c)
