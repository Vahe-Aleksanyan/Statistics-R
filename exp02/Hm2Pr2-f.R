
stock_data <- read.csv("/Users/vahealeksanyan/Downloads/AAPL.csv")
head(stock_data)

adj = stock_data$Adj.Close

# Initialize a vector to store the returns
returns <- numeric(length(adj))


for (i in 1:(length(adj) - 1)) {
  last_price <- adj[i + 1]
  first_price <- adj[i]
  returns[i] <- (last_price - first_price) / first_price
}

hist(returns,
     main = "Histogram of Weekly Returns for Apple Stock",
     xlab = "Weekly Return",
     ylab = "Frequency",
     col = "blue",      
     border = "black",  
     breaks = 20        
)


kde <- density(returns)
lines(kde, col = "red", lwd = 2)

legend("topright", legend = c("Histogram", "KDE"), col = c("blue", "red"), lwd = c(1, 2))


# we see that based on the size of the bin the kde does not coincide with histogram,
#if we user freq=False, and so have density histogram, the graphs will be similar to each other