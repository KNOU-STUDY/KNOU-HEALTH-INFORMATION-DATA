# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-10-08

cancer <- c(70, 30)
none_cancer <- c(40, 60)
df <- data.frame(
    list(cancer = cancer, none_cancer = none_cancer),
    row.names = c('smoking', 'none_smoking')
)
df