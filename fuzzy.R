# Install the readxl package if not already installed
# install.packages("readxl")

# Load the readxl package
library(readxl)

# Specify the path to the XLSX file
xlsx_file <- "path/to/your/file.xlsx"

# Read the XLSX file
data <- read_excel(xlsx_file)

# Print the data or perform further analysis
print(data)


# Create a fuzzy set
temperature <- c(0, 20, 30, 40)

# Create membership functions for the fuzzy set
low <- function(x) {min(x, 20) / 20}
medium <- function(x) {max(0, min(x - 20, 10)) / 10}
high <- function(x) {max(0, x - 30) / 10}

# Get the membership value of a specific input
temperature_value <- 25

low_membership <- low(temperature_value)
medium_membership <- medium(temperature_value)
high_membership <- high(temperature_value)

# Print the membership values
print(low_membership)
print(medium_membership)
print(high_membership)

# Create a data frame of membership values
membership_df <- data.frame(
  membership = c(low_membership, medium_membership, high_membership),
  temperature = c(temperature_value, temperature_value, temperature_value),
  set = c("Low", "Medium", "High")
)

# Plot a line chart of the membership values
plot(membership_df$temperature, membership_df$membership, type = "l",
     main = "Membership Values for Fuzzy Set",
     xlab = "Temperature", ylab = "Membership Value")

# plot bars for the membership values
barplot(membership_df$membership, names.arg = membership_df$set,
        main = "Membership Values for Fuzzy Set",
        xlab = "Fuzzy Set", ylab = "Membership Value")