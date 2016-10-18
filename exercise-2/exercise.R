# Exercise 2: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1

install.packages('devtools')
install.packages('dplyr')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

library(dplyr)
library(fueleconomy)
#View(vehicles)
# Require/library the fueleconomy package
if(require(fueleconomy)){
  print("devtools found")
}else{
  stop("Stuffs gone wrong, no devtools")
}

# You should have have access to the `vehicles` data.frame


# Create a data.frame of vehicles from 1997

cars.1997<- filter(vehicles,year==1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
print(length(unique(cars.1997$year)))
# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city


# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?


# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
MakeYearFilter<-function(my.make,my.year){
  filtered<-filter(vehicles,make==my.make,year==my.year)
  
}

# What was the most efficient honda model of 1995?


