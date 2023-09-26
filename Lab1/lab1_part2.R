View(EPI_data)
attach(EPI_data)
fix(EPI_data)
EPI

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 

#Normal Q-Q Plot
par(pty="s") 
qqnorm(EPI); qqline(EPI)

# Q-Q Plot
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)

# Exercise 1 Code
plot(ecdf(EPI), do.points = FALSE,verticals = TRUE)
plot(ecdf(EPI), do.points = TRUE, verticals = TRUE) # points are visible on the plot
par(pty="s")
help("qqnorm")
help("qqplot")
qqnorm(EPI)
qqline(EPI)
x <- seq(30,95,1)
x
x2 <- seq(30,95,2)
x2
x2 <- seq(30,96,2)
x2
qqplot(qt(ppoints(250), df = 5), x, xlab = "$Q-Q Plot")
qqline(x)