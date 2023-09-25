#Problem6 - a

mad1 = function(x) {
  mean_abs_dev = mean(abs(x - mean(x)))
  return(mean_abs_dev)
}

mad1(cars$speed)
mad1(cars$dist)

mad2 = function(x){
  median_abs_dev = mean(abs(x - median(x)))
  return(median_abs_dev)
}

mad2(cars$speed)
mad2(cars$dist)


# b
Standardize = function(x) {
  standatized = (x - mean(x)) / sd(x)
  return(standatized)
}

Standardize(cars$speed)

my_cars = data.frame(
  disp = mtcars$disp,
  drat = mtcars$drat,
  qsec = mtcars$qsec
)

# we can notice that drat and qseq boxplots are not visible since the interquartile range 
#is too small
boxplot(my_cars, main="Comparative Boxplot",
        col=c("red", "blue", "green"), names=c("disp", "drat", "qsec"))



sd_my_cars = sapply(my_cars, Standardize)

boxplot(sd_my_cars, main="Standardize comparetive boxplot", col=c("red", "blue", "green"),  names=c("disp", "drat", "qsec"))








