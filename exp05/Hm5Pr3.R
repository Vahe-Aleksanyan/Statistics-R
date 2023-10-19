set.seed(100)
x = rnorm(1000, 1, 2)
y = rnorm(1000, 2, 4)

merged = c(x, y)
qqnorm(merged)
qqline(merged)

xlabel <- "Theoretical Quantiles"
ylabel <- "Sample Quantiles"
legend("topleft", legend = "Merged Data", col = "blue", pch = 1