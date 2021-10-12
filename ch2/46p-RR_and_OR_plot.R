data <- read.table('./ch2/담즙-과포화비율자료.txt', header = T, fileEncoding = 'utf-8')
data
attach(data)
par(mfrow = c(2, 1))
plot(
  data$`과포화비율`,
  type = 'p',
  xlab = '자료',
  ylab = '담즙과포화비율',
  main = '담즙과포화비율',
)
plot(
  data$`과포화비율`,
  type = 'h',
  xlab = '자료',
  ylab = '담즙과포화비율',
  main = '담즙과포화비율',
)