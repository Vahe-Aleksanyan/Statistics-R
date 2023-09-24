x = c(0, 3, 4, 5, -1) # split the coordinates into seperate numeric vecrtors
y = c(2, -1, 2, 5, 2)

points = data.frame(x, y) # create a dataframe with the vectors

plot(points, col='red', pch = 19)