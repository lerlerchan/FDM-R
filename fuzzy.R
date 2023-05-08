# Install and load the "sets" package
#install.packages("sets")
library(sets)

# Define fuzzy sets for input variables
quality <- FuzzySet(c(0, 0, 5, 10), c(0, 1, 1, 0), name = "quality")
service <- FuzzySet(c(0, 0, 5, 10), c(0, 1, 1, 0), name = "service")

# Define fuzzy sets for output variables
#tip <- FuzzySet(c(0, 5, 10), c(0, 1, 1), name = "tip")

