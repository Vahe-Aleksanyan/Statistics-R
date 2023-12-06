# duration of pain relief in minutes for Drug X and Drug Y
duration_drug_X = c(131.29, 129.07, 125.16, 110.57, 107.65, 95.57, 110.53, 115.03, 108.91, 97.75,
                     125.36, 120.76, 123.65, 106.3, 134.97, 104.29, 122.05, 116.7, 95.19, 112.25)

duration_drug_Y = c(136.35, 120.31, 128.34, 132.04, 133.46, 118.41, 126.54, 123.73, 144.58, 144.46,
                     117.56, 126.23, 143.65, 134.97, 141.76, 126.97, 119.97, 126.63, 129.08, 151.38,
                     127.36, 107.72, 149.01, 131.27, 130.58, 126.37)

# perform a two-sample t-test with unequal variances
t_test_result <- t.test(duration_drug_X, duration_drug_Y, alternative = "less", mu = 20, var.equal = FALSE)

# Display the test result
print(t_test_result)

# Check the p-value and provide a conclusion
if (t_test_result$p.value < 0.05) {
  cat("reject the null hypothesis")
} else {
  cat("do not reject the null hypothesis")
}
