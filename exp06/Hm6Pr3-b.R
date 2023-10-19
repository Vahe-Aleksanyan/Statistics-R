# Set a seed for reproducible results in random number generation.
set.seed(1)

# Define a function to approximate a probability based on the given parameters.
approximate_probability = function(n, epsilon = 0.01, m = 10000) {
  # Initialize a count for favorable outcomes.
  fav_count <- 0
  
  # Generate 'm' random binary values, simulating Bernoulli trials.
  Xn = rbinom(m, 1, (n - 1) / n)
  
  # Loop through the generated values to count favorable outcomes.
  for (i in 1:m) {
    if (abs(Xn[i] - 1) >= epsilon) {
      fav_count <- fav_count + 1
    }
  }
  
  # Calculate the approximate probability by dividing the count of favorable outcomes by 'm'.
  approx_prob = fav_count / m
  
  # Return the calculated approximate probability.
  return(approx_prob)
}

# Create a data frame 'df' with values of 'n' and their corresponding approximate probabilities.
df = data.frame(n = c(5, 10, 100, 1000, 5000), 
                 approximate_prob = sapply(c(5, 10, 100, 1000, 5000), approx_probability))
# Print the data frame 'df' to display the results.
print(df)
