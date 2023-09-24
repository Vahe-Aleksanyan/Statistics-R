n = 1000
set.seed(1234)
sample_data <- rweibull(n, 2)
hist(sample_data, freq = FALSE, main="histogram of Weibull distribution", col = "cyan", xlim = c(0, 5), ylim = c(0, max(pdf_values, kde$y)))
par(new=TRUE)

x <- seq(0, 5, by = 0.1) 
pdf_values <- dweibull(x, shape = 2)
lines(x, pdf_values, col = "red", lwd = 3)


kde <- density(sample_data)

# Plot KDE
lines(kde, col = "blue", lwd = 2)
legend("topright", legend = c("PDF", "KDE"), col = c("red", "blue"), lwd = c(3, 2))