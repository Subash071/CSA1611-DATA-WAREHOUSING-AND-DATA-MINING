# LAB - DAY 2

# Q4. DATA NORMALIZATION

# Given data

data <- c(200, 300, 400, 600, 1000)


# Q4(a) Min-Max Normalization
# Range: 0 to 1

min_value <- min(data)
max_value <- max(data)

min_max <- (data - min_value) / (max_value - min_value)

print(min_max)


# Q4(b) Z-Score Normalization

mean_value <- mean(data)
sd_value <- sd(data)

z_score <- (data - mean_value) / sd_value

print(z_score)