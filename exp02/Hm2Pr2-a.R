set.seed(111)
size = 30
random_Binoms = rbinom(200, size, 0.4)
par(mfrow = c(1, 2))
barplot(table(random_Binoms), main = "Bar Plot", xlab = "Value", ylab = "Frequency")

hist(random_Binoms,  main = "Frequency Histogram", xlab = "Value", ylab = "Frequency", col = "lightblue")
