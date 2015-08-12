PET_daily_to_hourly

Code that converts a daily Potential Evapotranspiration time-series into an hourly product.

The code requires the longitude and latutide of the data location, in order to calculate daylight hours, 
and assumes a modifiable SEP distribution to distribute daily PET over the day between sunrise and sunset.

See the exampleData.txt for the required input file format.
See workflow_pet_daily_to_hourly.R for implementation
See source_pet_daily_to_hourly.R for code and additional parameters

Required R libraries:

library("RAtmosphere")
library("gamlss.dist")
library("ggplot2")
library("reshape")


