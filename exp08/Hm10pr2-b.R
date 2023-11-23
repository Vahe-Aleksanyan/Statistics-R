# I used the formula that I get in my handwriten homework 
# Using MLE estimator method for exponential distribution
# 1/x_bar +- Z_(1-l/2)*1/x_bar*n

# Set the true value of the parameter
true_lambda <- 0.5

# Set the number of samples
num_samples <- 140

# Set the sample size
sample_size <- 50

# Set the confidence level
confidence_level <- 0.96

# Initialize a counter for the number of times true value is in the CI
true_in_ci_count <- 0

# Set the number of simulations
num_simulations <- 1000

# Perform simulations
for (i in 1:num_simulations) {
  # Generate a sample from an exponential distribution
  sample_data <- rexp(sample_size, rate = true_lambda)
  
  # Calculate the sample mean
  sample_mean <- mean(sample_data)
  
  # Calculate the standard error of the mean
  se_mean <- sd(sample_data) / sqrt(sample_size)
  
  # Calculate the confidence interval
  ci <- c(sample_mean - qnorm((1 - confidence_level) / 2) * se_mean,
          sample_mean + qnorm((1 - confidence_level) / 2) * se_mean)
  
  # Check if the true value is in the confidence interval
  if (true_lambda >= ci[1] & true_lambda <= ci[2]) {
    true_in_ci_count <- true_in_ci_count + 1
  }
}

# Calculate the proportion of times the true value is in the CI
proportion_true_in_ci <- true_in_ci_count / num_simulations

# Print the result
cat("Proportion of times true value is in the CI:", proportion_true_in_ci, "\n")

