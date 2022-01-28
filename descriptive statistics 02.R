quakes<-datasets::quakes
head(quakes,5)
tail(quakes,5)
quakes[c(1,3),]
quakes[,c(1,3)]
quakes[c(1:3),c(1:3)]
eq<-quakes[,-5]
summary(quakes)
summary(quakes$depth)
plot(quakes)
plot(quakes$mag)
plot(quakes$mag,quakes$depth,type="l")
plot(quakes$depth)
par(mfrow=c(4,4),mar=c(2,4,2,1),las=0,bty="o")
plot(quakes$mag)
plot(quakes$mag,quakes$depth)
plot(quakes$mag,quakes$depth,type="l")
plot(quakes$mag,quakes$depth,type ="l",col="red")
#barplot
barplot(quakes$mag,xlab = "mag",ylab = "freq",main = "GRAPH OF MAGNITUDE",col = "blue",horiz =FALSE )
barplot(quakes$mag,xlab = "mag",ylab = "freq",main = "GRAPH OF MAGNITUDE",col = "blue",horiz =TRUE )
#BOXPLOT
boxplot(quakes$mag,col = "blue")
#multi boxplot
boxplot(quakes)
#HISTOGRAM
hist(quakes$depth,xlab = 'depth',ylab = "frequency",main="depth of the eathquakes",col="green")
hist(quakes$mag,xlab = 'mag',ylab = "frequency",main="mag of the eathquakes",col="green")
#scatterplot
scatter.smooth(quakes$mag,quakes$depth,col="black")
scatter.smooth(quakes)

var(quakes)
var(quakes$depth)
var(quakes$depth,quakes$lat)
sd(quakes$depth)
sd(quakes$mag)
sd(quakes$lat)
sd(quakes$stations,na.rm=T)
sd(quakes$depth,na.rm=T)
sd(quakes$long)
skewness(quakes$depth)
kurtosis(quakes$depth)
skewness(quakes$mag)
kurtosis(quakes$mag)
mean(quakes$lat)
median(quakes$lat)
mode(quakes$lat)
