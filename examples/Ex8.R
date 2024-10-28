setwd("C:\\Users\\Jakob\\Documents\\Info\\drittesSemester\\Satistik")

1#
set.seed(20)
x1 = rnorm(10,0,1)
y1 = rnorm(20,-1,1)

hist(x1)
hist(y1)

#a
mx1 = mean(x1)
my1 = mean(y1)

semx1 = (sd(x1)/ sqrt(10))
semy1 = (sd(y1)/ sqrt(20))

t1 = ((mx1-my1)/(sqrt(semx1^2 + semy1^2)))

v1 = (sd(x1)/10+sd(y1)/20)^2/((sd(x1)/10)^2/9)+((sd(y1)/20)^2/19)

p1 = 2* pt(t1, df = v1-1, lower.tail = FALSE)
#b
t.test(x1,y1)

#c
#p > 5% -> annehmen
# Interpretation: Die Diskrepanz wie in den DAten beobachtet in ca 7 von 100 Fällen auf, falls es keinen Unterschied
# zwischen den Datenmengen gibt. So gesehen sprechen die Daten für die Nullhypothese

#2
#a
load("waitingtimes2.Rdata")

x2 = wt[[1]]
y2 = wt[[2]]
par(mfrow=c(2,1))
hist(x2, las = 1, xlab = "Sekunden", ylab = "Frequenz", main = "Histogramm n = 64")
hist(y2, las = 1, xlab = "Sekunden", ylab = "Frequenz", main = "Histogramm n = 49")
#b
mx2 = mean(x2)
my2 = mean(y2)

semx2 = (sd(x2)/ sqrt(64))
semy2 = (sd(y2)/ sqrt(49))

t2 = ((mx2-my2)/(sqrt(semx2^2 + semy2^2)))

p2 = 2* (pnorm(t2,0,1))

#c

t.test(x,y, alpha=0.01)


