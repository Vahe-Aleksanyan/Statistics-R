
library(gplots)
wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data",
                   sep=",")




str(wine)
head(wine)

cor_matrix = cor(wine)
cor_matrix



# Create a correlation matrix heatmap using heatmap.2
heatmap.2(cor_matrix, 
          col = colorRampPalette(c("blue", "white", "red"))(50),
          trace = "none",
          margins = c(10, 10),
          main = "Correlation Matrix Heatmap - Wine Dataset")

correlations_of_v4 <- cor_matrix["V4", ]
positive_correlations <- correlations_of_v4[correlations_of_v4 > 0]
positive_correlations

# Find the variable with the minimal correlation
min_correlation_var <- rownames(cor_matrix)[which.min(cor_matrix)]
min_correlation_value <- min(cor_matrix)
min_correlation_value

# Find the variable with the maximal correlation
max_correlation_var <- rownames(cor_matrix)[which.max(cor_matrix)]
max_correlation_value <- max(cor_matrix)
max_correlation_value

# Find variables with correlations below the 0.2 for all other variables
very_weak_correlation <- colnames(cor_matrix)[which(abs(cor_matrix) < 0.2, arr.ind = TRUE)]
very_weak_correlation_unique <- unique(very_weak_correlation)
very_weak_correlation_unique
