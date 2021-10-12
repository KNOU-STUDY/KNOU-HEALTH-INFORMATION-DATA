data <- read.table('./ch3/담즙-과포화비율자료.txt', header = T, fileEncoding = 'utf-8')
data
attach(data)
par(mfrow = c(2, 1))
#합
sum(data$`과포화비율`)
#누적합
cumsum(data$`과포화비율`)
#평균
mean(data$`과포화비율`)
#중간값
median(data$`과포화비율`)
#10% 절삭평균
mean(data$`과포화비율`, trim = 1 / 10)