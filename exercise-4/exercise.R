# Exercise 4: Gates Foundation Educational Grants

# Read the data from the `data/gates_money.csv` file into a variable called
# `grants` using the `read.csv()` function
# Be sure to set your working directory, and do NOT treat strings as factors!
grants <- read.csv('data/gates_money.csv')

# Use the View function to look at the loaded data
View(grants)

# Create a variable `organization` as the `organizationtotal.amount` column of the dataset
organization <- grants$total_amount

# Confirm that the "organization" column is a vector using the `is.vector()`
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grantvalue <- mean(grants$total_amount)

# What was the dollar amount of the largest grant?
max.grantvalue <- max(grants$total_amount)

# What was the dollar amount of the smallest grant?
min.grantvalue <- min(grants$total_amount)

# Which organization received the largest grant?
max.organization <- grants$organization[grants$total_amount == max.grantvalue]

# Which organization received the smallest grant?
min.organization <- grants$organization[grants$total_amount == min.grantvalue]

# How many grants were awarded in 2010?s
grants_2010 <- length(grants$start_year == 2010)