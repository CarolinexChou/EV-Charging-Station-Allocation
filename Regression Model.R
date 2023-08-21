data1 <- read.csv(file = 'dataset_clean.csv')
data2 <- data.frame(data1)
attach(data2)

data3 <- filter(data2, County == 'Orange' & Data.Year >= 2015)
data3

reg1 <- lm(formula = Number.of.Vehicles ~ Data.Year, data = data3)
summary(reg1)

data5 = rbind(data5, c(2022))
data6 = rbind(data5, c(2023))

reg2 <- lm(formula = pop ~ Data.Year, data = data5)

predict(object = reg2, newdata = new_year)
