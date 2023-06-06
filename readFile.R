# Install the readxl package if not already installed
install.packages("readxl")

# Load the readxl package
library(readxl)

# Specify the path to the XLSX file
# "path/to/your/file.xlsx" 
xlsx_file <- "/GitHub/FDM-R/data.xlsx"

# Read the XLSX file
data <- read_excel(xlsx_file)

# Print the data or perform further analysis
print("hi")
print(data)


