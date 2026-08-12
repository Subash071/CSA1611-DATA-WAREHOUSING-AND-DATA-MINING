# LAB - DAY 2

# Q8. BOXPLOT FOR MPG AND CYL

# Given dataset

data <- mtcars


# Create Boxplot

boxplot(mpg ~ cyl,
        data = data,
        main = "MPG vs Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon")