# LAB - DAY 2

# Q7. WATER DATASET - LINEAR REGRESSION

# Create water dataset

water <- data.frame(
  hardness = c(15, 25, 35, 45, 55, 65, 75, 85, 95, 105),
  mortality = c(180, 175, 168, 160, 155, 148, 140, 135, 128, 120)
)


# Q7(i) Check linear relationship

plot(water$hardness,
     water$mortality,
     main = "Mortality vs Hardness",
     xlab = "Water Hardness",
     ylab = "Mortality",
     pch = 19)


# Q7(ii) Fit Linear Regression Model

model <- lm(mortality ~ hardness,
            data = water)

print(model)


# Q7(iii) Regression Summary

summary(model)


# Q7(iv) Predict Mortality for Hardness = 88

new_data <- data.frame(hardness = 88)

prediction <- predict(model,
                      newdata = new_data)

print(prediction)