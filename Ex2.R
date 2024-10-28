#6a
X = seq(1,20)
cdf = function(x){
  exp(x)/(1+exp(x))
}

pdf = function(x){
   integrate(x)
}

plot(main = "cumulative distribution function", cdf)
plot(main = "cumulative distribution function", cdf(X))


#7a
data()
x = trees$Height
y = round(x,-1)
table(x,y)
#7b
fibonacci_print = function(n){
  n1 = 0
  n2 = 1
  count = 2
  if(n <= 0) {
    print("wrong number")
  } else {
    if(n == 1) {
      print(n1)
    } else {
      print(n1)
      print(n2)
      while(count < n) {
        nth = n1 + n2
        print(nth)
        n1 = n2
        n2 = nth
        count = count + 1
      }
    }
  }
}
fibonacci_print(10)

fibonacci = function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(fibonacci(n-1) + fibonacci(n-2))
  }
}
fibonacci(10)
fibonacci(20)
#7c

t = seq(0, 2*pi, 0.01)
x = sin (2*t)
y = cos (3*t)
plot(x, y, type = 'l', col='blue')

answer = function(text,answer) {
  cat(text,answer, sep = " ---- ")
}
hitAllyears = 27
 numberOfYears = 22
 
 # No hit
 nohits = dpois(0,hitAllyears/numberOfYears)
 # Exactly one hit
 onehit = dpois(1,hitAllyears/numberOfYears)
# More than two hits
  #P(X>x)=1???P(X<=x)=1???F(x)
morethantwohits = 1 - sum(dpois((0:2),hitAllyears/numberOfYears))
answer("3a) No hit",nohits)
answer("3a) Excatly one hit",onehit)
answer("3a) More than two hit",morethantwohits)