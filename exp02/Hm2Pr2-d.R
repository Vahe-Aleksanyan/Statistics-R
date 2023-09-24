help(ChickWeight)
head(ChickWeight)

diet_1_data = ChickWeight[ChickWeight$Diet == 1, ]
x = diet_1_data$weight

diet_2_data = ChickWeight[ChickWeight$Diet == 2, ]
y = diet_2_data$weight


median1 = median(x)

MeanDiffrence = abs(mean(x) - mean(y))


hist(x, col = rgb(0, 0, 1, alpha = 0.5), main = "Histogram of Weights for Diet 1", xlab = "Weight", ylab = "Frequency", breaks = 15, freq = FALSE)
hist(y, col = rgb(1, 0, 0, alpha = 0.5), add = TRUE, breaks = 15, freq = FALSE)

# the hytograms are unimodeal right skewed and almost have the same shape