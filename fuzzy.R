library(sets)

# Define a universal set for age
age_univ <- FuzzySet(seq(0, 100, by = 1), rep(1, 101), name = "age")

# Define a fuzzy set for young age
age_young <- FuzzySet(c(0, 0, 25, 35), c(1, 0, 0, 0), name = "young")
age_young <- FuzzySet(age_univ, name="young")

# Plot the fuzzy set
plot(age_univ, age_young, main = "Young Age")
