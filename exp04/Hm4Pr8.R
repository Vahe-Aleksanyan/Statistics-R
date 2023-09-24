#problem 8

sample_quantile <- function(l, data) {
  if (l <= 0 || l >= 1) {
    return("Parameter l is not valid. It should be in the range (0, 0.5].")
  } 
  
  n <- trunc(l * length(data))
  sorted_data <- sort(data)
  
  return(sorted_data[n])
}

mydata <- c(-1, 2, 3, 2, 0, 2, 1, -1, 1, 5, 4)
result <- sample_quantile(0.8, mydata)
cat("Quantile:", result, "\n")
