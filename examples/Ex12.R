#2
#a
calculus = c(10,5,5)
algebra = c(10,20,10)
probability = c (20,5,15)

x <- rbind(calculus, algebra, probability)

chisq.test(x)



#b

# nein nicht ablehnen p > 0.001

#c
x_2 = x*2

chisq.test(x_2)

# p < 0.001 -> ablehnen
 


#4
computersc = c(51,49,57,59,66)
mathematics = c(62,59,48,74,60)
physics = c(76,51,70,80,88)

x <- rbind(computersc, mathematics, physics)


data <- structure(list(computersc = c(51,49,57,59,66),
                       mathematics = c(62,59,48,74,60),
                       physics = c(76,51,70,80,88)),
                  .Names = c("computersc", "mathematics", "physics"),
                  class = "data.frame", row.names = c(NA, -5L))

colours <- c("red", "orange", "blue", "yellow", "green")

barplot(as.matrix(data), ylab = "Number of pages", 
        cex.lab = 1.5, cex.main = 1.4, beside=TRUE, col=colours)
legend("topleft", inset=.02, title="students",
       c("1","2","3","4","5"), fill=colours, horiz=TRUE, cex=0.8)



chisq.test(x)
# nicht ablehnen p > 0.05