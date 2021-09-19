# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-09-20

ex91 <- read.table('./ch1/example6/ex91.txt', header = T)
# attach는 실제 변수화 시킨게 아니라 접근만 가능하게 한거라서 다른 이름이 있으면 걔가 우선적으로 나감
# 따라서 조심스럽게 사용해야함
attach(ex91)
colnames(ex91)
table(edu)
table(sex, edu)
summary(table(sex,edu))