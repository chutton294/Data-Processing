library("ggplot2")
library("reshape")

#workflow to derive hourly PET data from daily PET data

setwd("C:/Users/Christopher/Dropbox/code_tools/small_tools/pet_daily_to_hourly/")

##### call in source functions
    source("source_pet_daily_to_hourly.R")

##### call in example data
    data <- read.table("exampleData.txt", header = TRUE)

#### calculate hourly PET time-series from input data
    latitude <- 53
    longitude <- -3.5
    petHour <- petTimeSeries(data, latitude, longitude)
  
##### plot data example

    pd <- data.frame(melt(petHour, id = c("Hour","Day","Month","Year")))
    pd$Month <- as.factor(pd$Month)
    ggplot(data = pd, aes(y = value, x = Hour, group = Month, colour = Month)) + geom_line(size = 1) +
    ylab("PET (mm/day)") 

