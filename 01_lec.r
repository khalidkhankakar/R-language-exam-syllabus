x = c(1,3,5)
y = c(-3,-5,-8)

png('01_lec.png', width = 800, height = 600)

plot(x,y)

plot(1:20)

plot(1:20, type = 'l')

plot(1:20, main = 'My Plot', xlab = 'x axis', ylab = 'y axis', type = 'l', col='blue')

plot(1:20, col='red')

plot(1:20, cex=4)

plot(1:10, pch=23, cex=4, col='red')

plot(1:10, type='l', lwd=5)

dev.off()