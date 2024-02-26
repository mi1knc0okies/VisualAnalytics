library(ggplot2)
library(dplyr)


data(mtcars)
par(mfrow = c(2, 2))


# Box plot of mpg grouped by cyl
boxplot(mpg ~ cyl, data = mtcars,
        main = "Distribution of MPG by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon",
        col = "skyblue",
        border = "black")


# Scatter plot of disp vs mpg
plot(mpg ~ disp, data = mtcars,
     main = "Displacement vs MPG",
     xlab = "Displacement (cu.in.)",
     ylab = "Miles per Gallon",
     col = "blue")


# Scatter plot of cyl vs hp
plot(hp ~ cyl, data = mtcars,
     main = "Number of Cylinders vs Horsepower",
     xlab = "Number of Cylinders",
     ylab = "Horsepower",
     col = "red")


# We use dplyer to find the average hp of cars grouped by number of cylinders
avg_hp <- mtcars %>%
  group_by(cyl) %>%
  summarize(avg_hp = mean(hp))


# Bar graph of average hp by number of cylinders
barplot(avg_hp$avg_hp, names.arg = avg_hp$cyl,
        main = "Average Horsepower by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Average Horsepower",
        col = "orange")


