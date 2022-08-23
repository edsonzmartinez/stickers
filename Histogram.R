###############################################
# Article - Histogram                         #
###############################################

urlfile = "https://raw.githubusercontent.com/edsonzmartinez/stickers/main/simulation.csv"
result <- read.csv(urlfile,head=TRUE,sep=",")

hist(result$pacotes,xlab="Number of packets required to complete the album",main="",ylim=c(0,30000))
q <- quantile(result$pacotes, c(.25, .50, .75))
lines(c(q[1],q[1]),c(0,28000),lty="dashed",col="blue")
lines(c(q[2],q[2]),c(0,28000),lty="dashed",col="blue")
lines(c(q[3],q[3]),c(0,28000),lty="dashed",col="blue")
text(q[1],30000,"Q1")
text(q[2],30000,"Q2")
text(q[3],30000,"Q3")
text(1500,25000,paste("Lower quartile (Q1) = ",q[1]))
text(1500,23000,paste("Median (Q2) = ",q[2]))
text(1500,21000,paste("Upper quartile (Q3) = ",q[3]))
