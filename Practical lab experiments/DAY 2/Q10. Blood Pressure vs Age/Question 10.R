# LAB - DAY 2

# Q10. BLOOD PRESSURE VS AGE

# Read the dataset

data <- read.csv("diabetes.csv")


# Q10(i) Scatterplot

plot(data$Age,
     data$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     pch = 19)


# Q10(ii) Create Age Groups

data$AgeGroup <- cut(data$Age,
                     breaks = c(20, 30, 40, 50, 60, 80),
                     labels = c("20-30",
                                "31-40",
                                "41-50",
                                "51-60",
                                "61-80"),
                     right = FALSE)


# Q10(iii) Calculate Average Blood Pressure by Age Group

bp_by_Age <- aggregate(BloodPressure ~ AgeGroup,
                       data = data,
                       FUN = mean)

print(bp_by_Age)


# Q10(iv) Bar Chart

barplot(bp_by_Age$BloodPressure,
        names.arg = bp_by_Age$AgeGroup,
        main = "Average Blood Pressure by Age Group",
        xlab = "Age Groups",
        ylab = "Average Blood Pressure")