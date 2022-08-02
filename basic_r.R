#load the data set
usedcars = read.csv('usedcars.csv', stringsAsFactors = FALSE)
str(usedcars)
summary(usedcars$year)
summary(usedcars[c("price", "mileage")])
mean(c(36000, 44000, 56000))
median(c(36000, 44000, 56000))
range(usedcars$price)
diff(range(usedcars$price))
iqr = IQR(usedcars$price)
iqr
quantile(usedcars$price)
quantile(usedcars$price, probs = c(0.01,0.99))
quantile(usedcars$price, seq(from = 0, to = 1, by = 0.10))   
boxplot(usedcars$price, main="Boxplot of Used Cars Prices", ylab="Price ($)")
boxplot(usedcars$mileage, main="Boxplot of Used Cars Mileages", ylab="Odometer (mi.)")
boxplot(usedcars$price, usedcars$mileage, main ="Boxplot of used cars price and milages togather")
hist(usedcars$price, main="Histogram of used cars prices", xlab = "Prices ($)")
hist(usedcars$mileage, main = "Histogram of used cars mileages", xlab = "Odometer (mi.)")
var(usedcars$price)
sd(usedcars$price)
var(usedcars$mileage)
sd(usedcars$mileage)
table(usedcars$year)
table(usedcars$model)
table(usedcars$color)
model_table <- table(usedcars$model)
model_table
prop.table(model_table)
color_table <- table(usedcars$color)
color_pct <- prop.table(color_table)*100
color_pct
round(color_pct, digits = 1)
plot(x = usedcars$mileage, y = usedcars$price, main = "Scatter plot of Price s Mileage",
     xlab = "Used car Odometer (mi.)", ylab = "Used car Price ($)")
install.packages("gmodels")
library(gmodels)
usedcars$conservative <- usedcars$color %in% c("Black","Gray","Silver","White")
usedcars$color
table(usedcars$conservative)
CrossTable(x = usedcars$model, y = usedcars$conservative, chisq = TRUE)





