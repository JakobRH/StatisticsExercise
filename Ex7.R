setwd("C:\\Users\\Jakob\\Documents\\Info\\drittesSemester\\Satistik")


assign('moredist', get(load("dist_more.Rdata")))
assign('dist', get(load("dist.Rdata")))

#1
#a

#b
x = mean(distanz)
S = sd(distanz)

t = (x-550)/(S/sqrt(50))

#c
p = 2*(1-pnorm(t,0,1))
# p>5% -> wir nehmen an

#e
t.test(distanz, mu = 550)

#2
hist(moredist, breaks=40)
#a
t.test(moredist, mu = 550)
# ich lehne ab da hier circa 3*SEM

SEMdist = sd(distanz) / sqrt(50)
SEMmoredist = sd(moredist) / sqrt(200)

par(mfrow=c(2,1))

hist(distanz,main="50 Distanzdata")
# mean
abline(v = mean(distanz), col = "blue", lwd = 2)
# 550
abline(v = 550, col = "green", lwd = 2)
# sd of mean
abline(v = mean(distanz) + SEMdist , col = "red", lwd = 2)
abline(v = mean(distanz) - SEMdist , col = "red", lwd = 2)


hist(moredist,main = '200 Distanzdata')
# mean
abline(v = mean(moredist), col = "blue", lwd = 2)
# 550
abline(v = 550, col = "green", lwd = 2)
# sd of mean
abline(v = mean(moredist) + SEMmoredist , col = "red", lwd = 2)
abline(v = mean(moredist) - SEMmoredist , col = "red", lwd = 2)

legend(x = "topright", # location of legend within plot area
       c("mean", "550","sd of mean"),
       col = c("Blue", "green","red"),
       lwd = c(2, 2))

#4
par(mfrow=c(1,1))
load('wartezeiten.Rdata')
hist(wz)
# nein es ist nicht glockenf????rmig es ist eher expo

#####
# b
#####
meanWZ = mean(wz)
qalphahalb = qnorm(0.995)


SEMWZ = sd(wz) / sqrt(64)
LINKS99Kon = meanWZ - qalphahalb * SEMWZ
RECHTs99Kon = meanWZ + qalphahalb * SEMWZ
#xlim = c(0.956,0.959)
hist(wz)
abline(v = meanWZ, col = "blue", lwd = 2)
abline(v = LINKS99Kon, col = "red", lwd = 2)
abline(v = RECHTs99Kon, col = "red", lwd = 2)


#####
# c
#####
t.test(wz,mu=1.5,conf.level = 0.99)
# nein
