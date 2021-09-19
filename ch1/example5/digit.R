# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-09-20

digit <- read.table('./ch1/example5/digit.txt', header = T)
digit <- as.matrix(digit)
#par(mfrow = c(1, 1))
barplot(digit, legend.text = rownames(digit), col = 2:6)