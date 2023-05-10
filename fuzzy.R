# Import the sets library
library(sets)

# Create a fuzzy set for temperature
cold <- fuzzy_set(name = "cold", membership = function(x) {
  ifelse(x < 20, 1, 0)
})

hot <- fuzzy_set(name = "hot", membership = function(x) {
  ifelse(x > 30, 1, 0)
})

# Create a fuzzy variable for temperature
temperature <- fuzzy_variable(name = "temperature", sets = c(cold, hot))

# Set the temperature to 40 degrees Celsius
temperature$set(40)

# Plot the fuzzy sets and the temperature
plot(temperature)

