# LAB - DAY 2

# Q2. EQUAL-FREQUENCY PARTITIONING AND DATA SMOOTHING

# Given data

prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8,
            10, 10, 10, 10, 12, 14, 14, 14,
            15, 15, 15, 15, 15, 15,
            18, 18, 18, 18, 18, 18, 18, 18,
            20, 20, 20, 20, 20, 20, 20,
            21, 21, 21, 21,
            25, 25, 25, 25, 25,
            28, 28, 30, 30, 30)


# Q2(i) Equal-Frequency Partitioning
# 3 bins

bin1 <- prices[1:17]
bin2 <- prices[18:34]
bin3 <- prices[35:52]

print(bin1)
print(bin2)
print(bin3)


# Q2(ii) Data Smoothing using Bin Means

mean1 <- mean(bin1)
mean2 <- mean(bin2)
mean3 <- mean(bin3)

smooth_mean <- c(
  rep(mean1, length(bin1)),
  rep(mean2, length(bin2)),
  rep(mean3, length(bin3))
)

print(smooth_mean)


# Q2(ii) Data Smoothing using Bin Boundaries

lower1 <- min(bin1)
upper1 <- max(bin1)

lower2 <- min(bin2)
upper2 <- max(bin2)

lower3 <- min(bin3)
upper3 <- max(bin3)

smooth_boundary1 <- ifelse(
  abs(bin1 - lower1) <= abs(bin1 - upper1),
  lower1,
  upper1
)

smooth_boundary2 <- ifelse(
  abs(bin2 - lower2) <= abs(bin2 - upper2),
  lower2,
  upper2
)

smooth_boundary3 <- ifelse(
  abs(bin3 - lower3) <= abs(bin3 - upper3),
  lower3,
  upper3
)

smooth_boundary <- c(
  smooth_boundary1,
  smooth_boundary2,
  smooth_boundary3
)

print(smooth_boundary)


# Q2(iii) Histogram

hist(prices,
     breaks = c(0, 15, 20, 30),
     main = "Histogram of All Electronics Prices",
     xlab = "Price",
     ylab = "Frequency")