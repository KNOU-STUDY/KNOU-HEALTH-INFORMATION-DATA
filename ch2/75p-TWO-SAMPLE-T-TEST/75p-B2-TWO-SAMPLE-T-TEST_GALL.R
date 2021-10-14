data <- read.table('./ch2/담즙-과포화비율자료.txt', header = T, fileEncoding = 'utf-8')
man <- data$`성별` == 'm'
data_man <- data[man,]
data_women <- data[!man,]
t.test(data_man$`과포화비율`, data_women$`과포화비율`, var.equal = T)
t.test(data_man$`과포화비율`, data_women$`과포화비율`, var.equal = F)

par(mfrow = c(2, 1))
qqnorm(data_man$`과포화비율`, ylab = '남자_담즙과포화비율', main = "남자 담즙 과포화 비율", col = 2)
qqline(data_man$`과포화비율`, col = 4, lty = 2)

qqnorm(data_women$`과포화비율`, ylab = '여자_담즙과포화비율', main = "여자 담즙 과포화 비율", col = 2)
qqline(data_women$`과포화비율`, col = 4, lty = 2)

shapiro.test(data_man$`과포화비율`)
shapiro.test(data_women$`과포화비율`)
