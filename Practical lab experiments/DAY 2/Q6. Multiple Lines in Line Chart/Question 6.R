# LAB - DAY 2

# Q6. MULTIPLE LINES IN LINE CHART

# Given dataset

data <- mtcars


# Multiple Lines using a single plot function

plot(data$mpg,
     type = "o",
     xlab = "Cars",
     ylab = "Values",
     main = "MPG and QSEC",
     ylim = range(c(data$mpg, data$qsec)))

lines(data$qsec,
      type = "o")