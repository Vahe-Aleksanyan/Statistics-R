set.seed(1)
approximate_expected_value <- function(n, epsilon = 0.01, m = 10000) {
  fav_count <- 0
  squared_diff <- (Xn - 1)^2
  expected_value <- mean(squared_diff)
  return(expected_value)
}
df <- data.frame(n = c(5, 10, 100, 1000, 5000), 
                 approximate_expected_value = sapply(c(5, 10, 100, 1000, 5000), approx_probability))
print(df)