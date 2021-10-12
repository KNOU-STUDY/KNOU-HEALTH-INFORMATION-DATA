data <- read.table('./ch2/담즙-과포화비율자료.txt', header = T, fileEncoding = 'utf-8')
t.test(data$`과포화비율`, mu = 80, alternative = 'greater')