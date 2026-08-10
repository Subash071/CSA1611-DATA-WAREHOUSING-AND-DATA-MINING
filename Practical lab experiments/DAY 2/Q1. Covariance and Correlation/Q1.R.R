
# LAB - DAY 2
# Q1. COVARIANCE AND CORRELATION


# Given data
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)


# Q1(i) Sample covariance between B and C


cov_BC <- cov(B, C)

print(cov_BC)



# Q1(ii) Sample covariance matrix

data <- cbind(A, B, C)

cov_matrix <- cov(data)

print(cov_matrix)



# Q1(iii) Sample correlation between B and C


cor_BC <- cor(B, C)

print(cor_BC)



# Q1(iv) Sample correlation matrix


cor_matrix <- cor(data)

print(cor_matrix)
