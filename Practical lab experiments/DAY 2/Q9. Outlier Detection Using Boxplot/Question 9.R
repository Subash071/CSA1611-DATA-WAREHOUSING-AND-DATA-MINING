# LAB - DAY 2

# Q9. OUTLIER DETECTION USING BOXPLOT

# Given data

points <- c(12, 15, 14, 10, 18, 20, 22, 13, 11, 35)


# Create Boxplot

boxplot(points,
        main = "Boxplot of Players' Scores",
        ylab = "Points Scored",
        col = "lightblue")


# Find Outliers

outliers <- boxplot.stats(points)$out

print(outliers)