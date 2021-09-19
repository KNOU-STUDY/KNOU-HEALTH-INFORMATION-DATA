# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-09-19

ex8 <- read.table('ch1/example1/ex8.txt')
attach(ex8)
colnames(ex8)
sex.tb <- table(sex)
sex.tb
edu.tb <- table(edu)
edu.tb

# table 함수는 해당 벡터의 원소를 세는 방향으로 만들어지는것 같다.. 원래 그랬나?
