# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-09-19

#Sys.setlocale("LC_CTYPE", ".1251")

percData <- read.table('./ch1/example2/perc.txt', header = T)
percData <- as.matrix(percData)
var.name <- colnames(percData)
case.name <- rownames(percData)

barplot(percData, names=var.name)
#legend(locator(1), case.name)
title('Barplot')