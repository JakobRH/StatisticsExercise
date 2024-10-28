setwd("C:\\Users\\Jakob\\Documents\\Info\\drittesSemester\\Satistik")

###########2

# a - 4

# b - 3/8

# c - 

# d - x = (3, 2, 2, 3)


#############5

load("wuerfel.Rdata")

# a - n = 150

# b - d = 4

# c 

wuerfel <- unlist(w)

barplot(table(wuerfel),
        xlab = "color",
        ylab = "count",
        col = c("blue", "orange", "red", "green"))

# d 
# nicht fair, orange


#############6

# a
# blue = 35
# naranja = 58
# rot = 25
# verte = 32

# b
# 37.5

# c

chi2 = (35-37.5)^2/37.5 + (58-37.5)^2/37.5 + (25-37.5)^2/37.5 + (32-37.5)^2/37.5

# d

# e
# R = [11.1, infinity)

# f
# ja chi2 ist element des Ablehnungsbereichs

# g

p = pchisq(chi2, 3, lower.tail = FALSE)

# h
# falls di hypothese zu trifft, sehr unwahrscheinliches ereignis
########7

# a
p0 = c(1/5, 2/5, 1/5, 1/5)

# b

chisq.test(table(wuerfel), p = p0)

# c
# nicht verwerfen


# d
# sieht danach aus

# e
# sieht nicht danach aus



























