# Define a Bernoulli distribution function with parameters n (number of trials) and size (probability of success).
bernuolli = function(n, size) {
  return(rbinom(n, 1, (size - 1) / size))
}
# Set up a 2x2 grid for plotting.
par(mfrow=c(2, 2))

# Initialize a variable X.
X <- 1

# Define a vector of values for 'n'.
n_values = c(2, 5, 15, 25)

# Loop through different values of 'n'.
for (n in n_values) {
  # Generate random samples from the Bernoulli distribution with 'n' trials.
  Xn <- bernuolli(1000, n)
  # Compute the empirical cumulative distribution function (ECDF) for the generated samples.
  Fn <- ecdf(Xn)
  # Create a sequence of values for 'x' within a specified range.
  x <- seq(-1, 2, length.out = 100)
  # Create a plot of the ECDF.
  plot(x, Fn(x), type="s", xlim=c(-1, 2), ylim=c(0, 1), col="black", lwd=3, xlab="x", ylab="F(x)", main=paste0("n = ", n))
  # Add red vertical lines at x-values -1, 1, and 2 to illustrate the stepwise nature of the ECDF.
  lines(c(-1, 1, 2), c(0, 1, 1), type="s", col="red", lwd=3)
}
