# Given data
weights <- c(194.2, 131.5, 220.7, 81.1, 194.0, 210.4, 240.3, 96.0, 131.8, 100.4, 163.1, 197.8,
             146.7, 152.9, 188.8, 138.3, 108.2, 183.2, 164.4, 204.0, 192.5, 213.6)

# Sample size
n <- length(weights)

# Sample standard deviation
s <- sd(weights)

# Confidence level
confidence_level <- 0.92

# Degrees of freedom
df <- n - 1

# Critical values from chi-square distribution
alpha <- 1 - confidence_level
lq <- qchisq(alpha/2, df)
uq <- qchisq(1 - alpha/2, df)

# Confidence interval for standard deviation using square root formula
ci_sd <- c(sqrt((df * s^2) / uq), sqrt((df * s^2) / lq))

# Check if the level of variability is acceptable
acceptable_variability <- diff(ci_sd) <= 20

# Print the results
cat("92% Confidence Interval for Standard Deviation (n-1 degrees of freedom):", ci_sd, "\n")

