data <- read.table('./ch2/담즙-과포화비율자료.txt', header = T, fileEncoding = 'utf-8')
hist(data$`과포화비율`, breaks = seq(20, 160, 20), main = '히스토그램')
# 자세히 보니까 차트 아래쪽에 표시되네
rug(data$`과포화비율`)