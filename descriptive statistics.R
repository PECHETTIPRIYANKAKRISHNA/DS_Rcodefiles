airquality<-datasets::airquality
head(airquality,10)
tail(airquality,10)
airquality[,c(1,2)]
df<-airquality[,-6]
airquality$Wind  #extracting the single column data
summary(airquality$Ozone)
summary(airquality)
plot(airquality$Wind)
plot(airquality$Wind,airquality$Temp,type="p")
plot(airquality)
#plot
plot(airquality$Wind,type="l")
#barplot
barplot(airquality$Ozone,ylab='OZONE LEVELS',main='Ozone levels in air',col='blue',horiz=F,axes=T)
#histogram
hist(airquality$Temp)
hist(airquality$Temp,xlab = 'solar radiation',ylab = 'frequency',main='solar radiation values in air',col='red')
#single box plot
boxplot(airquality$Wind)
boxplot(airquality$Wind,main="BOXPLOT")
boxplot.stats(airquality$Wind)$out
#multiple box plots
boxplot(airquality)
boxplot(airquality[,1:4],main='multiple box plots')

#margin of the grid(mar)
#no of rows and columns(mfrow)
#whether a border is to be included(bty)
#and positon of the labels(las:1 for horizontal ,las:0 for vertical )
#bty-box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type='l')
plot(airquality$Ozone,type='l')
plot(airquality$Ozone,type='l')
barplot(airquality$Ozone,main="OZONE CONCENTRATION IN AIR",xlab="ozone levels",col='green',horiz=TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Wind)
boxplot(airquality[,0:4],main="multiple box plots")
