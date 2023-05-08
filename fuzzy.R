# Load frbs library
library(frbs)

# Create input and output data
x <- seq(-10, 10, length.out = 100)
y <- sin(x) + rnorm(length(x), 0, 0.1)

# Create fuzzy model
model <- frbs.learn(x, y, method.type = "ANFIS")

# Predict output for new input
new_x <- seq(-12, 12, length.out = 200)
new_y <- predict(model, new_x)

# Plot input, output and predicted output
plot(x, y, type = "l", col = "blue", ylim = c(-1.5, 1.5))
lines(new_x, new_y, type = "l", col = "red")
legend("topleft", legend = c("Original data", "Predicted data"), col = c("blue", "red"), lty = 1)
