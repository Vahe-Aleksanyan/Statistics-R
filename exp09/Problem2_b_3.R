# speed data
vehicle_speeds = c(66, 79, 80, 74, 81, 79, 65, 78, 77, 69)

# Perform a one-sample t-test
t_test_result = t.test(vehicle_speeds, mu = 70, alternative = "greater")

# Display the test result
print(t_test_result)

if (t_test_result$p.value < 0.01) {
  print("reject the null hypothesis")
} else {
  print("do not reject the null hypothesis")
}
