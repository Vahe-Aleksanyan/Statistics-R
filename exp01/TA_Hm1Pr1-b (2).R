#Show the first 3 and last 3 observations (rows) of the standard dataset mtcars;
head(mtcars, 3)
tail(mtcars, 3)

# Find in this dataset the car with the maximal Horsepower;

hp = mtcars$hp
maxHpIndex = which.max(hp)
maxHpCar = mtcars[maxHpIndex,]
cat("Car with largest hp is ", rownames(maxHpCar))

#Calculate the Frequency Table for the Number of forward gears;
table(mtcars$gear)

#Plot the BarPlot, PieChart, Line Graph and the Frequency Polygon for the gear Variable.
gear = mtcars$gear
barplot(table(gear))
pie(table(gear))
plot(table(gear))  
plot(table(gear), type = 'l') 


hist(gear) ##### not needed

