###
### Simulated Data - Residual Plot Patterns
###

####
## Simple linear regression model (all assumptions met)
x <- rnorm(30, mean = 95, sd = 10)
e <- rnorm(30, mean = 0, sd = 7)
y <- 10 + 2*x + e

# Scatterplot and LS regression line
plot(x, y)
mod <- lm(y ~ x)
abline(mod, col = "red")

# Residuals vs. fitted
plot(resid(mod) ~ fitted(mod), main = "Residuals vs. Fitted")  ## Could also use resid(mod)
abline(h = 0, col = "red")   ## Add horizontal line at y = 0

# Check Normality Assumption
qqnorm(resid(mod))
qqline(resid(mod), col = "red")

hist(resid(mod))

####
## Linearity violation
x2 <- rnorm(30, mean = 95, sd = 10)
e2 <- rnorm(30, mean = 0, sd = 30)
y2 <- 10 + 2*x2^2 + e2

# Scatterplot and LS regression line
plot(x2, y2, main = "Scatterplot of Y vs. X")
mod2 <- lm(y2 ~ x2)
abline(lm(y2 ~ x2))

# Residuals vs. fitted
# Checking constant variance: look at variability around the curve
plot(residuals(mod2) ~ fitted(mod2), main = "Residuals vs. Fitted")  
abline(h = 0, col = "red")  

# Normal probability plot of residuals
qqnorm(resid(mod2))
qqline(resid(mod2))

####
## Constant variance violation
x3 <- rnorm(30, mean = 5, sd = 1)
e3 <- rnorm(30, mean = 0, sd = x3^2)
y3 <- 5 + 20*x3 + e3

# Scatterplot and LS regression line
plot(x3, y3, main = "Scatterplot of Y vs. X")
mod3 <- lm(y3 ~ x3)
abline(lm(y3 ~ x3))

# Residuals vs. fitted
plot(residuals(mod3) ~ fitted(mod3), main = "Residuals vs. Fitted")  
abline(h = 0, col = "red")  

# Normal probability plot of residuals
qqnorm(resid(mod3))
qqline(resid(mod3))


####
## Normality violation
x4 <- rnorm(30, mean = 10, sd = 1)
e4 <- rt(30, df = 1)  ## Cauchy distribution (t-distribution with 1 df)
y4 <- 10 + 2*x4 + e4

# Scatterplot and LS regression line
plot(x4, y4)
mod4 <- lm(y4 ~ x4)
abline(lm(y4 ~ x4))

# Residuals vs. fitted
plot(residuals(mod4) ~ fitted(mod4), main = "Residuals vs. Fitted") 
abline(h = 0)   ## Add horizontal line at y = 0

# Normal probability plot of residuals
qqnorm(resid(mod4))
qqline(resid(mod4))
