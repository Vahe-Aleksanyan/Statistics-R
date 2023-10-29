
lambda = 3
n = 10000 

sample = rexp(n, rate = lambda)

plot(1, 1, type = "n", xlim = c(1, n), ylim = c(0, max(sample)))


for (k in 1:n) {
  lambda_hat = mean(sample[1:k])
  points(k, lambda_hat, col = "blue", pch = 19)
}

for (i in 1:5) {
  sample = rexp(n, rate = lambda)
  for (k in 1:n) {
    lambda_hat = mean(sample[1:k])
    points(k, lambda_hat, col = i + 1, pch = 19)
  }
}

abline(h = lambda, col = "red", lty = 2)
