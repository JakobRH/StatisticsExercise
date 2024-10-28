setwd("C:\\Users\\Jakob\\Documents\\Info\\drittesSemester\\Satistik")

#1
#a
p0 = 0.5
h = 17/58
se = sqrt((h*(1-h))/58)

z = (h-p0)/se

p = 2*(1-pnorm(-z,0,1))
#b
#dass er ein mieser Lügner ist

#3
load("Umfrage.Rdata")

par(mfrow = c(1,1))
h1 = 81/110 #p1
h2 = 48/88 #p2
se1 = sqrt((h1*(1-h1))/110)
se2 = sqrt((h2*(1-h2))/88)

umfragetmp =matrix(c(h1,h2,1-h1, 1-h2), nrow = 2, ncol = 2, byrow = TRUE)

barplot(umfragetmp,
        main = "Testergebnisse",
        col = c("green","red"),
        names.arg = c("besucht", "verpasst"),
        horiz = TRUE
)
legend("topleft",
       c("nicht bestanden","bestanden"),
       fill = c("red","green")
)

segments(h1-se1,0.70,h1+se1,0.70)
segments(h2-se2,1.9,h2+se2,1.9)

#c
z = (h1-h2)/sqrt(se1^2+se2^2)
#d 
ablehnen

#4
#a - kann man nicht sagen

#b - nein hängt auch von anzahl n ab

#c - kann sein muss aber nicht

#d -

#e - ja wir wissen 97% KOnfidenzintervall üverdeckt, also auch 99%

#f - Wir können keine Aussage über die Richtigkeit der Nullhypothese treffen. Wir können bloß annehmen,
# dass sie stimmt und dann basierend darauf, anhand der Beobachtungen/Daten eine Aussage darüber treffen, wie wahrscheinlich wir diese Daten beobachten würde, wenn die Nullhypothese stimmen würde.
# Ob sie stimmt, oder nicht, oder wie wahrscheinlich sie ist, können wir nicht sagen

#g - Nein, sie ist exakt 1-alpha = 0.97 = 97%
