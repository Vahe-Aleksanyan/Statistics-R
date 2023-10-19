set.seed(1)
approximate_probability <- function(n, epsilon = 0.01, m = 10000) {
  fav_count <- 0
  Xn <- rbinom(m, 1, (n - 1) / n)
  for (i in 1:m) {
    if (abs(Xn[i] - 1) >= epsilon) {
      fav_count <- fav_count + 1
    }
  }
  approx_prob <- fav_count / m
  return(approx_prob)
}

df <- data.frame(n = c(5, 10, 100, 1000, 5000), 
                 approximate_prob = sapply(c(5, 10, 100, 1000, 5000), approx_probability))
print(df)
