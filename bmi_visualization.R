bmi <- read.csv("bmi.csv")

bmi_mean <- aggregate(bmi~age, bmi, mean)

ggplot(data=bmi_mean, aes(x=age, y=avg(bmi))) + geom_line()