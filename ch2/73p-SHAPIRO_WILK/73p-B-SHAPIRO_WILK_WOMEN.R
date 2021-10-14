data <- read.table('./ch2/담즙-과포화비율자료.txt', header = T, fileEncoding = 'utf-8')
man <- data$`성별` == 'f'
data <- data[man,]
qqnorm(data$`과포화비율`, ylab = '담즙과포화비율', main = '', col = 2)
qqline(data$`과포화비율`, lty = 2, col = 3)
shapiro.test(data$`과포화비율`)
'
	Shapiro-Wilk normality test

data:  data$과포화비율
W = 0.95679, p-value = 0.2733
'
#0.05보다 크므로 기각하지못한다. 따라서 정규분포이다.