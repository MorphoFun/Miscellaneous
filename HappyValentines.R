roses <- "red"
violets <- "blue"
plotHeart <- function(r, col){
  t <- seq(0,2*pi,length.out=100)
  x <- r*sin(t)^3
  y <- 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t)
  plot(x,y, type = "l", xlab='', ylab='', xlim = c(-25, 25), axes = FALSE, main="Happy Valentine's Day")
  polygon(x,y,col=col,border=NA)
}
plotHeart(16, col = ifelse((z <- rbinom(1, 1, 0.5)) > 0, roses, violets))
