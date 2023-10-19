# Set a seed for reproducible results in random number generation.
set.seed(1)
# Define a function to approximate the expected value based on the given parameters.
approximate_expected_value = function(n, epsilon = 0.01, m = 10000) {
  # Initialize a count for favorable outcomes.
  fav_count <- 0
  
  # Calculate squared differences between Xn and 1 for the forthcoming calculation.
  squared_diff = (Xn - 1)^2
  
  # Calculate the expected value by computing the mean of squared differences.
  expected_value = mean(squared_diff)
  
  # Return the calculated expected value.
  return(expected_value)
}

# Create a data frame 'df' with values of 'n' and their corresponding approximate expected values.
df = data.frame(n = c(5, 10, 100, 1000, 5000), 
                 approximate_expected_value = sapply(c(5, 10, 100, 1000, 5000), approx_probability))

# Print the data frame 'df' to display the results.
print(df)
