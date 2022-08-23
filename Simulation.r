
fullrect <- function(w) {
 vt <- ceiling(w/50)
 ht <- w-(50*(ceiling(w/50)-1))
 polygon(c((ht-1)*10,ht*10,ht*10,(ht-1)*10),
         c(-vt*10,-vt*10,-(vt-1)*10,-(vt-1)*10),col="red")
 }

# Grid
par(mar=c(0.5, 0.5, 0.5, 0.5))
plot(0,0,col="white",xlim=c(0,500),ylim=c(-150,0),axes=FALSE,xlab="",ylab="")
for (j in seq(0,500,10))
 for (k in seq(-140,0,10)) {
  lines(c(0,500),c(k,k))
  lines(c(j,j),c(-140,0)) }
  
# Numbers
num <- 670
for (j in seq(0,490,10))
 for (k in seq(-130,0,10)) { 
  m <- (j/10+1)+50*(-k/10)
  if (m<=num) { text(j+5,k-5,m,cex=0.6) } }

 N <- 670             # Total number of stickers
 k <- 5               # Number of stickers in a packet
 H <- 0               # Number of stickers that the collector have
 D <- 0               # Duplicate stickers
 is.missing <- 1:N    # Missing stickers
 first.rep <- 0
 stickers.b <- 0      # Number of stickers
 while (H<N) {
  g      <- sample(N,k,replace=TRUE)  
  for (q in 1:5) fullrect(g[q]) 
  polygon(c(0,500,500,0),c(-150,-150,-142,-142),col="white",border = NA)
  repetd <- g[! g %in% is.missing]
  is.missing <- is.missing[! is.missing %in% g]
  H <- N - length(is.missing)
  text(90,-145,paste("Missing stickers:",N-H),pos=4)
  D <- D + length(repetd)
  text(220,-145,paste("Duplicate stickers:",D),pos=4)
  if (D>0 & first.rep==0) first.rep <- stickers.b + 1  
  stickers.b <- stickers.b + 1
  text(0,-145,paste("Packets:",stickers.b),pos=4)
  text(350,-145,paste("Cost (BRL):",stickers.b*4),pos=4)
  Sys.sleep(0.5)
 }
 total    <- stickers.b*5
 stickers <- stickers.b
 cost     <- stickers*4
 first.rep
 
