###############################################
# Article - Figure 01                         #
###############################################

x<-c(500, 600, 650, 700, 750, 800, 826, 850, 900, 918, 950, 1000, 
1036, 1100, 1150, 1200, 1300, 1500, 1600, 1650, 1700, 1750, 1755)
y<-c(1e-05, 0.00044, 0.00516, 0.02735, 0.08516, 0.18488, 0.24972, 
0.31416, 0.4517, 0.4995, 0.57939, 0.68734, 0.75114, 0.83773, 
0.88541, 0.91974, 0.96123, 0.9912, 0.99583, 0.99713, 0.99803, 
0.99864, 0.99869)
ylab<-"Probability of completing the album"
xlab<-"Number of packets sold"
par(mar=c(5.1, 4.1, 1.5, 1.5))
plot(x,y,type="l",bty="l",col="blue",las=1,ylab=ylab,xlab=xlab,axes=FALSE)
axis(1,at=seq(400,1800,200),label=seq(400,1800,200))
axis(2,at=seq(0,1,0.25),label=seq(0,1,0.25),las=1)
lines(c(0,2000),c(1,1),lty="dashed",col=gray(0.4))
lines(c(0,2000),c(0.75,0.75),lty="dashed",col=gray(0.4))
lines(c(0,2000),c(0.50,0.50),lty="dashed",col=gray(0.4))
lines(c(0,2000),c(0.25,0.25),lty="dashed",col=gray(0.4))
lines(c(0,2000),c(0,0),lty="dashed",col=gray(0.4))
points(918,0.4995,pch=18,col="blue")
text(900,0.45,"Median = 918",col="blue",pos=4)
points(946.98,1-0.42777,pch=18,col="red")
text(935,0.55,"Mean = 947",col="red",pos=4)
points(826,0.25,pch=18,col="blue")
text(822,0.20,"Lower quartile = 826",col="blue",pos=4)
points(1036,0.75,pch=18,col="blue")
text(1026,0.70,"Upper quartile = 1036",col="blue",pos=4)

