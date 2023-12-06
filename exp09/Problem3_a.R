set.seed(5)

# first set of observations
group1 = rnorm(n = 50, mean = 1.2, sd = sqrt(1))

# second set of observations
group2 = rnorm(n = 60, mean = 1.42, sd = sqrt(1.4))

# perform a two-sample t-test assuming equal variances
t_test_result = t.test(group1, group2, var.equal = TRUE)

print(t_test_result)

# Check the p-value and provide a conclusion
if (t_test_result$p.value < 0.06) {
  print("reject the null hypothesis")
} else {
  print("Do not reject the null hypothesis")
}

