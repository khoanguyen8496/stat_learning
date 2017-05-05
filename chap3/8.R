library(ISLR)
library(MASS)
# a) use lm to perform a simple linear regression
lm.fit = lm(mpg~horsepower, data=Auto)
summary(lm.fit)
# i. there is a relationship between the predictor and the response, since the p-value <
# 2e-16. Therefore, we can reject the null hypothesis that is \beta1 = 0
# The relationship between mpg and horsepower is negative because the coefficent is negative
predict(lm.fit, data.frame(horsepower=(c(98))), interval="confidence")
predict(lm.fit, data.frame(horsepower=(c(98))), interval="prediction")
# b) plot the response and the predictor. Use abline() function to display the least squares
# regression line
attach(Auto)
plot(horsepower, mpg)
abline(lm.fit, lwd=3, col="red")
par(mfrow=c(2,2))
plot(lm.fit)

