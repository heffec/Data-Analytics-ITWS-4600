################### -------------Exercise 1-------------
#DALY---------------------------------
EPI_data <- read.csv("C:/Users/heffec/Documents/GitHub/DataAnalytics_Fall2023_ChrisHeffernan/Lab1/EPI_data_2010.csv")
View(EPI_data)
attach(EPI_data)
fix(EPI_data)
DALY

tf <- is.na(DALY) # records True values if the value is NA
E <- DALY[!tf] # filters out NA values, new array

summary(DALY) # stats
fivenum(DALY,na.rm=TRUE)

stem(DALY)
hist(DALY)
# Min and Max values in DALY
min_daly <- min(DALY, na.rm = TRUE)
max_daly <- max(DALY, na.rm = TRUE)

# Create a histogram with breaks spanning the range of DALY
hist(DALY, breaks = seq(0, 92, by = 1), prob = TRUE)

lines(density(DALY,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(EPI)

#CDF
plot(ecdf(DALY), do.points=FALSE, verticals=TRUE)
# Quantile - Quantile
par(pty="s")
qqnorm(EPI); qqline(DALY)
x<-seq(0,92,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn (DALY)")
qqline(x)
#-------------------------------------

#AIR_H--------------------------------
AIR_H

tf <- is.na(AIR_H) # records True values if the value is NA
E <- AIR_H[!tf] # filters out NA values, new array

summary(AIR_H)
fivenum(AIR_H, na.rm = TRUE)
stem(AIR_H)

# Min and Max values in DALY
min_air_h <- min(AIR_H, na.rm = TRUE)
max_air_h <- max(AIR_H, na.rm = TRUE)


hist(AIR_H, breaks = seq(0, 100, by = 1), prob = TRUE)
lines(density(AIR_H, na.rm = TRUE, bw = 1))
rug(EPI)

# Cumulative Distribution Function (CDF) for AIR_H
plot(ecdf(AIR_H), do.points = FALSE, verticals = TRUE)

# Quantile-Quantile (Q-Q) plot for AIR_H
par(pty = "s")
qqnorm(AIR_H)
qqline(AIR_H)

# Q-Q plot for AIR_H using quantiles
x <- seq(0, 92, 1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn (AIR_H)")
qqline(x)

# Create a boxplot with a title
boxplot(AIR_H, DALY, names = c("AIR_H", "DALY"), 
        xlab = "Variables", ylab = "Values",
        main = "Boxplot of AIR_H and DALY")
qqplot(AIR_H, DALY, xlab = "AIR_H", ylab = "DALY", main = "QQ Plot of AIR_H vs. DALY")
################### -------------Exercise 1-------------


################### -------------Exercise 2-------------
#Landlock
EPI
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
#
hist(Eland)
hist(Eland, seq(30., 95., 1.0), prob=TRUE)
lines(density(Eland, na.rm = TRUE, bw = 1.))
detach(EPI_data)



