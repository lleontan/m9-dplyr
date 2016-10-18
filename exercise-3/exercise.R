# Exercise 3: Data Frame Practice with `dplyr`.
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

cars.2015<- filter(vehicles,year==2015)


# Which Accura model has the best hwy MPG in 2015? (without method chaining)
best.model<-cars.2015$model[which.max(cars.2015$hwy)]

# Which Accura model has the best hwy MPG in 2015? (nesting functions)
best.model.2<-select(
  filter(
    filter(
      vehicles, make=="acura", year==2015),hwy==max(hwy)
    ),model
  )

# Which Accura model has the best hwy MPG in 2015? (pipe operator)
best.model<-filter(vehicles,make=="Acura", year==2015)%>%
  filter(hwy==max(hwy))%>%
  select(model)

### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
