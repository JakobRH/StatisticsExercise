#1
workloads = c(25,13,7,9,44,3,2,33)
median(workloads)
#1b
quantile(workloads,probs =  c(0.25, 2/3), type = 2)
#25% 66.66667% 
#5        25

#2a
getwd()
setwd("C:\\Users\\Jakob\\Documents\\Info\\drittesSemester\\Satistik")
load("algorithms.Rdata")
boxplot(runningtimes, xlab = "Runtime",col = blues9, border = "black", horizontal = TRUE)
#2b
#a: 20
#b: eher doppelt als dreifach
#c: ka
#d: Stimmt Median von B liegt weiter links als das 1.Quantil von A
#e: Stimmt Median von A liegt weiter links als das 3.Quantil von B
#f: kann man nicht genau sagen

#3a
k <- 100
#rnorm generates a vector of normally distributed random numbers.
#rnorm can take up to three arguments:
n <- sample(k:(2*k),1) #n: the number of random variables to generate
mean <- runif(1,0,k)   #mean, if not specified defaults to 0.
sd <-  rexp(1,1/k)     #sd: the standard deviation. If not specified, defaults to 1.
x <- rnorm(n, mean, sd)
hist(x)
abline(v = mean(x), col = "red")
abline(v = mean(x)-sd(x), col = "blue")
abline(v = mean(x)+sd(x), col = "blue")
legend("topright", 95, legend=c("Median", "Standard Deviation"),
       col=c("red", "blue"), lty = 1)






#7

legend("topleft", legend=c("95%", "99%", "99.9%"), col=c("blue", "red", "green"), lty=1:3, cex=0.8)

a = seq(-4, 4, by=0.1) 
plot(seq(-4, 4, by=0.1), dnorm(a,0,1), type="l", main="N(0,1)-Verteilung", xlab="X", ylab="Dichte")

firstVal = qnorm((1-0.95)/2)
secondVal = qnorm(0.95+(1-0.95)/2)
sprintf("Quantile von 95 Prozent: %f und %f", (1-0.95)/2, 0.95+(1-0.95)/2)
abline(v=firstVal, col='blue', lwd=2)
abline(v=secondVal, col='blue', lwd=2)

firstVal = qnorm((1-0.99)/2)
secondVal = qnorm(0.99+(1-0.99)/2)
sprintf("Quantile von 99 Prozent: %f und %f", (1-0.99)/2, 0.99+(1-0.99)/2)
abline(v=firstVal, col='red', lwd=2)
abline(v=secondVal, col='red', lwd=2)

firstVal = qnorm((1-0.995)/2)
secondVal = qnorm(0.995+(1-0.995)/2)
sprintf("Quantile von 99.5 Prozent: %f und %f", (1-0.995)/2, 0.995+(1-0.995)/2)
abline(v=firstVal, col='green', lwd=2)
abline(v=secondVal, col='green', lwd=2)

legend(-4, 0.4, legend=c("95%", "99%", "99,5%"), col=c("blue","red", "green"), lty=1)
