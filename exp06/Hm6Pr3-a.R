bernuolli <- function(n, size) {
  return(rbinom(n, 1, (size - 1) / size))
}
par(mfrow=c(2, 2))
X <- 1
n_values <- c(2, 5, 15, 25)
for (n in n_values) {
  Xn <- bernuolli(1000, n)
  Fn <- ecdf(Xn)
  x <- seq(-1, 2, length.out = 100)
  plot(x, Fn(x), type="s", xlim=c(-1, 2), ylim=c(0, 1), col="black", lwd=3, xlab="x", ylab="F(x)", main=paste0("n = ", n))
  lines(c(-1, 1, 2), c(0, 1, 1), type="s", col="red", lwd=3)
}