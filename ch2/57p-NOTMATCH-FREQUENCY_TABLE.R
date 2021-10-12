data <- read.table('./ch3/담즙-과포화비율자료.txt', header = T, fileEncoding = 'utf-8')
rank <- cut(data$`과포화비율`, breaks = seq(20, 160, 20))
table(rank)