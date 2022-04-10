# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
points <- c(28, 30, 17, 28, 17, 20, 10, 31, 0, 13, 15, 30, 33, 10, 24, 51, 38)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
against <- c(16, 33, 30, 21, 26, 23, 13, 7, 17, 23, 17, 23, 13, 20, 25, 29, 30)

# Combine your two vectors into a dataframe
scores <- data.frame(points, against)

# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
scores$diff <- scores$points - scores$against

# Create a new column "won" which is TRUE if the Seahawks won
scores$won <- scores$points > scores$against

# Create a vector of the opponent names corresponding to the games played
opponents <- c("Indianapolis", "Tennessee", "Minnesota", "San Francisco", "L.A. Rams", "Pittsburgh", "New Orleans", "Jacksonville", "Green Bay", "Arizona", "Washington", "San Francisco2", "Houston", "L.A. Rams2", "Chicago", "Detroit", "Arizona2")

# Assign your dataframe rownames of their opponents
rownames(scores) <- opponents

# View your data frame to see how it has changed!
View(scores)
