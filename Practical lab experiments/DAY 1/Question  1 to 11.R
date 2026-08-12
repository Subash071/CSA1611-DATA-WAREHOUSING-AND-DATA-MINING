# ============================================================
# DWDM LAB - DAY 1
# R PROGRAMS
# ============================================================


# ============================================================
# Q1. APPROXIMATE MEDIAN FOR GROUPED FREQUENCY DATA
# ============================================================

# Age and frequency

age <- c(5, 15, 20, 50, 80, 110)

frequency <- c(200, 450, 300, 1500, 700, 44)

# Calculate median

median(age)

median(frequency)


# ============================================================
# Q2. MEAN, MEDIAN, MODE, MIDRANGE AND QUARTILES
# ============================================================

age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22,
         25, 25, 25, 25, 30, 33, 33, 35, 35, 35,
         35, 36, 40, 45, 46, 52, 70)

# Mean

mean(age)

# Median

median(age)

# Mode

mode_age <- names(table(age))[table(age) == max(table(age))]

mode_age

# Midrange

midrange <- (min(age) + max(age)) / 2

midrange

# First Quartile

quantile(age, 0.25)

# Third Quartile

quantile(age, 0.75)


# ============================================================
# Q3. NORMALIZATION
# ============================================================

# Given data

x <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization

min_max_norm <- (x - min(x)) / (max(x) - min(x))

min_max_norm

# (b) Z-Score Normalization

z_score_norm <- (x - mean(x)) / sd(x)

z_score_norm


# ============================================================
# Q4. SMOOTHING BY BINNING
# ============================================================

# Given data

data <- c(11, 13, 13, 15, 15, 16, 19, 20,
          20, 20, 21, 21, 22, 23, 24, 30,
          40, 45, 45, 45, 71, 72, 73, 75)

bins <- 5

# Create bins

bin_indices <- cut(data, bins)

# (a) Smoothing by Bin Mean

mean_smooth <- tapply(data, bin_indices, mean)

print(mean_smooth)

# (b) Smoothing by Bin Median

median_smooth <- tapply(data, bin_indices, median)

print(median_smooth)

# (c) Smoothing by Bin Boundaries

boundary_smooth <- tapply(data, bin_indices,
                          function(x) c(min(x), max(x)))

print(boundary_smooth)


# ============================================================
# Q5. AGE AND BODY FAT ANALYSIS
# ============================================================

# Given data

age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50,
         52, 54, 54, 56, 57, 58, 58, 60, 61)

fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9,
         27.4, 27.2, 31.2, 34.6, 42.5, 28.8,
         33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

# (a) Mean, Median and Standard Deviation of Age

mean(age)

median(age)

sd(age)

# Mean, Median and Standard Deviation of Body Fat

mean(fat)

median(fat)

sd(fat)

# (b) Boxplots

boxplot(age, fat,
        names = c("Age", "Body Fat"),
        main = "Boxplot of Age and Body Fat")

# (c) Scatter Plot

scatter.smooth(age, fat,
               main = "Age vs Body Fat",
               xlab = "Age",
               ylab = "Body Fat")

# Q-Q Plot

qqplot(age, fat,
       main = "Q-Q Plot of Age and Body Fat",
       xlab = "Age",
       ylab = "Body Fat")


# ============================================================
# Q6. NORMALIZATION OF AGE VALUE 35
# ============================================================

# Age data

v <- c(23, 23, 27, 27, 39, 41, 47, 49, 50,
       52, 54, 54, 56, 57, 58, 58, 60, 61)

# (i) Min-Max Normalization

min_value <- min(v)

max_value <- max(v)

min_max <- (35 - min_value) / (max_value - min_value)

print(min_max)

# (ii) Z-Score Normalization

mean_value <- mean(v)

sd_value <- 12.94

z_score <- (35 - mean_value) / sd_value

print(z_score)

# (iii) Decimal Scaling Normalization

m <- 35

j <- ceiling(log10(abs(m)))

decimal_scaling <- m / (10^j)

print(decimal_scaling)


# ============================================================
# Q7. MEAN, MEDIAN AND MODE OF PENCIL DATA
# ============================================================

# Number of pencils in each box

pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Mean

mean(pencils)

# Median

median(pencils)

# Mode

mode_pencils <- names(table(pencils))[
  table(pencils) == max(table(pencils))
]

mode_pencils


# ============================================================
# Q8. SCATTER PLOT - MOBILE PHONES SOLD VS MONEY
# ============================================================

# X = Mobile phones sold
# Y = Money

x <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)

y <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)

# Scatter plot

scatter.smooth(x, y,
               main = "Mobile Phones Sold vs Money",
               xlab = "Mobile Phones Sold",
               ylab = "Money")


# ============================================================
# Q9. EQUAL-FREQUENCY AND EQUAL-WIDTH PARTITIONING
# ============================================================

# Marks data

marks <- c(55, 60, 71, 63, 55, 65, 50, 55,
           58, 59, 61, 63, 65, 67, 71, 72, 75)

num_bins <- 3

# (a) Equal-Frequency / Equi-Depth Partitioning

bins_eq_frequency <- cut(marks,
                         breaks = num_bins,
                         labels = FALSE)

print(bins_eq_frequency)

hist(marks,
     breaks = num_bins,
     col = "lightblue",
     xlab = "Marks",
     ylab = "Frequency",
     main = "Equal-Frequency Partitioning")


# (b) Equal-Width Partitioning

bins_eq_width <- cut(marks,
                     breaks = num_bins,
                     labels = FALSE)

print(bins_eq_width)

hist(marks,
     breaks = num_bins,
     col = "lightgreen",
     xlab = "Marks",
     ylab = "Frequency",
     main = "Equal-Width Partitioning")


# ============================================================
# Q10. INTERQUARTILE RANGE AND STANDARD DEVIATION
# ============================================================

# Speed data

v <- c(78.3, 81.8, 82, 74.2, 83.4,
       84.5, 82.9, 77.5, 80.9, 70.6)

# Interquartile Range

IQR(v)

# Standard Deviation

sd(v)


# ============================================================
# Q11. FIRST QUARTILE AND THIRD QUARTILE
# ============================================================

# Age data

age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22,
         25, 25, 25, 25, 30, 33, 33, 35, 35, 35,
         35, 36, 40, 45, 46, 52, 70)

# First Quartile

quantile(age, 0.25)

# Third Quartile

quantile(age, 0.75)