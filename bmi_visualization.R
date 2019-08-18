### bmi 데이터로 라인 그래프 그리기

# 1. bmi 데이터 불러오기
bmi <- read.csv("bmi.csv")

# 2. 나이별 bmi 평균 구하기
bmi_mean <- aggregate(bmi~age, bmi, mean)
View(bmi_mean)

# 3. bmi 평균 데이터로 라인 그래프 그리기
ggplot(data=bmi_mean, aes(x=age, y=bmi)) + geom_line()