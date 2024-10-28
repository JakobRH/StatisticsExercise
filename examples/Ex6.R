#1
#a
setwd("C:\\Users\\Jakob\\Documents\\Info\\drittesSemester\\Satistik")
load("dist.Rdata")
hist(distanz, breaks = 40)
#n??herungsweise!

#b

x = mean(distanz)

z = (x-500)/(200/sqrt(50))

x <- seq(-4,4,length=100)
hx <- dnorm(x,0,1)

plot(x, hx, type="l", lty = 2, xlab ="x value", ylab = "density", main = "comparison of t Distributions")
abline(v = z, col = "blue", lwd = 2)
abline(v = qnorm(0.975,0,1), col = "red", lwd =2)
abline(v = qnorm(0.025,0,1), col = "red", lwd = 2)


legend(x = "topright", c("5%", "z"), col = c("Red", "Blue"), lwd = c(2,2))

2*(1-pnorm(z,0,1))
#p = 0.001259225
#P-Wert = P_H0 (|Z|>= |z|)
#p < 5%
#P <= alpha <=> e R Lehne H0 ab  Sprich: ???Diskrepanz war signi???kant??? 

