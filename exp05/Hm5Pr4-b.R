state.df <- as.data.frame(state.x77)
head(state.df)

num_observations <- nrow(state.df)
num_observations

cov_matrix <- cov(state.df)
cov_matrix

cor_matrix <- cor(state.df)
cor_matrix


# Get the number of variables (columns) in the correlation matrix
num_variables <- ncol(cor_matrix)

for (i in 1:(num_variables - 1)) {
  for (j in (i + 1):(num_variables)) {
    if (abs(cor_matrix[i, j]) > 0.6) {
      cat(colnames(cor_matrix)[i], " - ", colnames(cor_matrix)[j], ", correlation = ", cor_matrix[i, j], "\n")
    }
  }
}

pairs(state.df)

heatmap(cor_matrix, 
        col = colorRampPalette(c("blue", "white", "red"))(50),
        main = "Correlation Matrix Heatmap",
        symm = TRUE,         # Show the upper and lower triangles
        margins = c(10, 10)  # Add some margin space
)

