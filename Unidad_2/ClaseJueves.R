x=seq(-4,4,by=0.1); x
y= (x^3-2*x^2)/(x-2)
plot(x,y,type = 'l', col= "blue",main= "y=(x^3-2*x^2)/(x-2)")
abline(h=0, col= "red")
abline(v=0, col= "red")
abline(v=2, col= "green")
abline(h=4, col= "green")

x=seq(-5,5,by=0.1); x
y =x^2-4;y
plot(x,y,type = 'l', col= "blue",main= "y=x^2-4")
abline(h=0, col= "red")
abline(v=0, col= "red")
abline(v=3, col= "green")
abline(h=-4, col= "green")



x=seq(-5,5,by=0.1); x
y = 1/(x+2);y
yy = 1/x
plot(x,y,type = 'l', col= "blue")
plot(x,yy, type = 'l', col = "blue")
g = x+2
plot(x,g, type='l',col="cyan")
abline(h=0, col= "red")
abline(v=0, col= "red")
abline(v=-2, col= "green")

par(mfrow = c(2, 2))
f1 = x-3
plot(x,f1, type='l',col="cyan", main= "(x-3)")
abline(h=0, col= "red")
abline(v=0, col= "red")

f2 = -(x-3)
plot(x,f2, type='l',col="cyan", main= "-(x-3)")
abline(h=0, col= "red")
abline(v=0, col= "red")

f3 = x^2-3*x
plot(x,f3, type='l',col="red", main= "(x^2-3x)>=0")

f4 = -(x^2-3*x)
plot(x,f4, type='l',col= 'green', main= "-(x^2-3x)<0")



# Valores de x
x = seq(-2, 5, by=0.01)

# Funciones
y1 = x
y2 = x - 3
y3 = x^2 - 3*x
y4 = abs(x)*abs(x-3)

# Cuatro graficas
par(mfrow=c(2,2))

plot(x, y1, type="l", col="blue", lwd=2,
     main="1. Funcion x")
abline(h=0, v=0, col="red")

plot(x, y2, type="l", col="blue", lwd=2,
     main="2. Funcion x-3")
abline(h=0, v=0, col="red")
abline(v=3, col="green", lty=2)

plot(x, y3, type="l", col="blue", lwd=2,
     main="3. Funcion x^2-3x")
abline(h=0, v=0, col="red")
abline(v=3, col="green", lty=2)

plot(x, y4, type="l", col="blue", lwd=2,
     main="4. Funcion |x||x-3|")
abline(h=0, v=0, col="red")
abline(v=3, col="green", lty=2)


# Intervalos
x1 = seq(-5, 0, by=0.01)
x2 = seq(0, 3, by=0.01)
x3 = seq(3, 5, by=0.01)

# Expresiones de cada tramo
f1 = x1^2 - 3*x1
f2 = -x2^2 + 3*x2
f3 = x3^2 - 3*x3

# Cuatro graficas
par(mfrow=c(2,2))

# 1. Primer tramo: x <= 0
plot(x1, f1, type="l", col="blue", lwd=2,
     xlim=c(-5,6), ylim=c(0,20),
     main="1. x <= 0",
     xlab="x", ylab="f(x)")
abline(h=0, v=0, col="red")

# 2. Segundo tramo: 0 < x < 3
plot(x2, f2, type="l", col="green", lwd=2,
     xlim=c(-5,6), ylim=c(0,3),
     main="2. 0 < x < 3",
     xlab="x", ylab="f(x)")
abline(h=0, v=0, col="red")
abline(v=3, col="gray", lty=2)

# 3. Tercer tramo: x >= 3
plot(x3, f3, type="l", col="purple", lwd=2,
     xlim=c(-5,6), ylim=c(0,9),
     main="3. x >= 3",
     xlab="x", ylab="f(x)")
abline(h=0, v=0, col="red")
abline(v=3, col="gray", lty=2)

# 4. Los tres tramos juntos
plot(x1, f1, type="l", col="blue", lwd=2,
     xlim=c(-5,6), ylim=c(0,12),
     main="4. f(x) = |x||x-3|",
     xlab="x", ylab="f(x)")

lines(x2, f2, col="green", lwd=2)
lines(x3, f3, col="purple", lwd=2)

abline(h=0, v=0, col="red")
abline(v=3, col="gray", lty=2)


x = seq(-2, 5, by=0.01)

y = x^2 - 3*x
f = abs(y)

plot(x, y, type="l", col="red", lwd=2,
     ylim=c(-3, 12),
     main="Efecto del valor absoluto",
     ylab="y")

lines(x, f, col="blue", lwd=2)

abline(h=0, v=0, col="gray")
abline(v=3, col="gray", lty=2)

legend("topright",
       legend=c("x^2-3x", "|x^2-3x|"),
       col=c("red","blue"),
       lty=1, lwd=2)
