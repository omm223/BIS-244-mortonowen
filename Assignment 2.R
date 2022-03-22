library(here)
STATES <- read.csv(here("covid-19-data","us-states.csv"))
View(STATES)
PENNSYLVANIA <- filter(STATES, state=="Pennsylvania")
view(PENNSYLVANIA)
n <- length(PENNSYLVANIA$date)
PENNSYLVANIA$incr_cases <- 1
view(PENNSYLVANIA)
For(i in 2:n) {
  PENNSYLVANIA$incr_cases[i] <- (PENNSYLVANIA$cases[i]-PENNSYLVANIA$cases[i-1])
}
n <- length(PENNSYLVANIA$date)
PENNSYLVANIA$incr_deaths <- 1
view(PENNSYLVANIA)
For(i in 2:n) {
  PENNSYLVANIA$incr_deaths[i] <- (PENNSYLVANIA$deaths[i]-PENNSYLVANIA$deaths[i-1])
  sd(incr_cases)