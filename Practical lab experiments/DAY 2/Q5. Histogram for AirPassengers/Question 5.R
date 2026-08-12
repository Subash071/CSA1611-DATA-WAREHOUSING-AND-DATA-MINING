# LAB - DAY 2

# Q5. HISTOGRAM FOR AIRPASSENGERS DATASET

# Given dataset

data <- AirPassengers


# Histogram

hist(data,
     breaks = c(100, 250, 400, 550, 700),
     main = "Histogram of AirPassengers",
     xlab = "Number of Passengers",
     ylab = "Frequency")