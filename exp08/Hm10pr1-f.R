#function to calculate confidence interval for Bernoulli model parameter p
ci.bernoulli <- function(x, a) {
  # x: dataset of Bernoulli trials
  # a: confidence level
  
  n <- length(x)
  p_hat <- mean(x)  # sample proportion
  margin_of_error <- 1 / (2 * sqrt(n))  # margin of error for Bernoulli model
  
  lower <- p_hat - margin_of_error
  upper <- p_hat + margin_of_error
  
  return(c(lower, upper))
}

# Function to calculate confidence interval for Normal model parameter µ when σ is known
ci.normal.mu.givensig <- function(x, sigma, a) {
  # x: dataset of observations from a normal distribution
  # sigma: known standard deviation
  # a: confidence level
  
  n <- length(x)
  x_bar <- mean(x)  # sample mean
  z <- qnorm(1 - a / 2)  # Z-score for given confidence level
  margin_of_error <- z * sigma / sqrt(n)  # margin of error for normal model
  
  lower <- x_bar - margin_of_error
  upper <- x_bar + margin_of_error
  
  return(c(lower, upper))
}

# Example usage
set.seed(100)  # for reproducibility
bernoulli_data <- rbinom(100, 1, 0.3)  # Example Bernoulli data
normal_data <- rnorm(100, mean = 10, sd = 2)  # Example Normal data

# Calculate confidence interval for Bernoulli model
ci_bernoulli <- ci.bernoulli(bernoulli_data, 0.95)
print("Confidence Interval for Bernoulli Model:")
print(ci_bernoulli)

# Calculate confidence interval for Normal model with known
ci_normal <- ci.normal.mu.givensig(normal_data, 2, 0.95)
print("Confidence Interval for Normal Model (σ known):")
print(ci_normal)
