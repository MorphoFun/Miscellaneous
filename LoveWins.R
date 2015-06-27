####### RAINBOW HEART IN R ######
## Created in celebration of Supreme Court Ruling to legalize same-sex marriage in all 50 states
# Modified from the answer provided by James here: http://stackoverflow.com/questions/6542825/equation-driven-smoothly-shaded-concentric-shapes

setwd('~/Desktop')

jpeg("LoveWins.jpg")

# Create the heart
plotHeart <- function(r, col){
  t <- seq(0,2*pi,length.out=100)
  x <- r*sin(t)^3
  y <- (13*r/16)*cos(t) - (5*r/16)*cos(2*t) - (2*r/16)*cos(3*t) - (r/16)*cos(4*t)
  polygon(x,y,col=col,border=NA)
}

plot(c(-16,16), c(-16,13), xlim=c(-16,16), ylim=c(-16,13), axes=FALSE, xlab='', ylab='', type='n', main="Created with love in R \n #LoveWins")

# plot the rainbow fill
mapply(plotHeart,seq(16,0,length.out=100),col=rainbow(100))

dev.off()
