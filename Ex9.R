setwd("C:\\Users\\Jakob\\Documents\\Info\\drittesSemester\\Satistik")

load("temperatures.Rdata")
#2

par(mfrow = c(1,1))

sem = function(x) sd(x)/sqrt(length(x))
mean2 = lapply(temp, mean)
sem2 = lapply(temp, sem)

stripchart(temp,
           main="CPU temperatures",
           xlab="celsius",
           ylab="CPU",
           col=c("orange","red", "pink", "green", "purple"),
           pch=16#defines character/symbol used for plotting
)

for(i in 1:5){
  segments(mean2[[i]], i-0.5, mean2[[i]], i+0.5,col="black")
  segments(mean2[[i]] - sem2[[i]], i, mean2[[i]]+sem2[[i]], i,col="red")
}





#3

ni <- c(sapply(lapply(temp, length), "[[", 1))
x <- c(unlist(temp))

single_means = sapply(lapply(temp, mean), "[[", 1)
global_mean = mean(unlist(temp))

k = length(temp)
n = length(unlist(temp))

# Variability between groups
variability_between_groups = (1/(k-1))*(sum(ni*((single_means - global_mean)^2)))

# Variability in groups
first = (temp[[1]] - single_means[[1]])^2
second = (temp[[2]] - single_means[[2]])^2
third = (temp[[3]] - single_means[[3]])^2
fourth = (temp[[4]] - single_means[[4]])^2
fifth = (temp[[5]] - single_means[[5]])^2
variability_in_groups = (1/(n-k))*(sum(c(first, second, third, fourth, fifth)))

res3 = variability_between_groups/variability_in_groups

# Test mit anova
gr <- factor(rep(1:k,ni))
anova(aov(x~gr))




# 4
# a) Wir müssen insgesamt (5 ncr 2) = 10 Paare testen.

print("Before correction: ")
for(i in 1:(length(temp)-1)) {
  for(j in (i+1):length(temp)) {
    res = t.test(temp[[i]], temp[[j]])$p.value
    print(res < 0.05)
  }
}

print("After correction: ")
for(i in 1:(length(temp)-1)) {
  for(j in (i+1):length(temp)) {
    res = t.test(temp[[i]], temp[[j]],  mu = 0.95)$p.value
    print(res*10 < 0.05)
  }
}

#7
par(mfrow = c(3,1))
d <- c(0, 0.25, 0.5)
for (di in d){
  data = replicate(10000, t.test(rnorm(20, 0, 1), rnorm(20, di, 1))$p.value)
  hist(data, freq=FALSE, main = c("Histogram for d = ",di))
}
s


