sample = rexp(1000, rate=0.3)
SampleEcdf = ecdf(sample)
plot(SampleEcdf, xlim=c(0, 100), ylim=c(0,1), ylab = "ecdf and CDF")

par(new = TRUE)
t = seq(-6,6, 0.01) ##### would be better to choose the interval to be equal to xlim
x = pexp(t, rate=0.3)
plot( t, x, type='l', col='green', lwd=2, xlim=c(0, 100), ylim=c(0,1), ylab = "ecdf and CDF")
