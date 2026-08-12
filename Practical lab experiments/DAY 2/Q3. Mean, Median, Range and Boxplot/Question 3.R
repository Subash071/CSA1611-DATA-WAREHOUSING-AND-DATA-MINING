# LAB - DAY 2

# Q3. MEAN, MEDIAN, RANGE AND BOXPLOT

# Given data

Class_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)

Class_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)


# Q3(i) Find Mean

mean_A <- mean(Class_A)
mean_B <- mean(Class_B)

print(mean_A)
print(mean_B)


# Q3(i) Find Median

median_A <- median(Class_A)
median_B <- median(Class_B)

print(median_A)
print(median_B)


# Q3(i) Find Range

range_A <- max(Class_A) - min(Class_A)
range_B <- max(Class_B) - min(Class_B)

print(range_A)
print(range_B)


# Q3(ii) Boxplot

boxplot(Class_A, Class_B,
        names = c("Class A", "Class B"),
        main = "Comparison of Class A and Class B",
        xlab = "Classes",
        ylab = "Exam Scores")