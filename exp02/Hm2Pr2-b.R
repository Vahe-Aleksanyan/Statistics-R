library(datasets)
help(islands)
str(islands)
head(islands)

# Create a data frame from the provided values
landmass_data = data.frame(Region = names(islands), LandmassArea = as.numeric(islands))

# Filter data for landmass areas less than 200,000 sq miles
small_landmass_data = subset(landmass_data, LandmassArea < 200000)

less = small_landmass_data$LandmassArea
# Create a histogram
hist(less, breaks = 20, 
     main = "Frequency Histogram of Landmass Areas (Less than 200,000 sq miles)",
     xlab = "Landmass Area (sq miles)", ylab = "Frequency")


hist(less, breaks = 20, freq = FALSE,
     main = "Density Histogram of Islands with Area < 200,000 sq miles",
     xlab = "Landmass Area (sq miles)", ylab = "Frequency")

kde <- density(less)
lines(kde, col = "red", lwd = 3)

rug(less)

