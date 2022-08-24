###############################################
# Article - B simulations                     #
###############################################

B<-100000
N <- 670          # Total number of stickers
k <- 5            # Number of stickers in a packet
total<-packets<-cost<-rep(NA,B)
first.rep<-0
for (b in 1:B) {
 H <- 0               # Number of stickers that the collector have
 D <- 0               # Duplicate stickers
 is.missing <- 1:N    # Missing stickers
 first.rep <- 0
 packets.b <- 0
 while (H<N) {
  g      <- sample(N,k,replace=H)  
  repetd <- g[! g %in% is.missing]
  is.missing <- is.missing[! is.missing %in% g]
  H <- N - length(is.missing)
  D <- D + length(repetd)
  if (D>0 & first.rep==0) first.rep <- packets.b + 1  
  packets.b <- packets.b + 1
 }
 total[b]   <- packets.b*5
 packets[b] <- packets.b
 cost[b]    <- packets[b]*4
}
mean(packets)
