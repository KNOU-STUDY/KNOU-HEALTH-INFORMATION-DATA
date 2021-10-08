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
'cancer_odds'
(cancer_odds <- (df[1, 1] / sum(df[, 1])) / (df[1, 2] / sum(df[, 1])))
'none_cancer_odds'
(none_cancer_odds <- (df[2, 1] / sum(df[, 2])) / (df[2, 2] / sum(df[, 2])))
'odds_rate'
(odds_rate <- cancer_odds / none_cancer_odds)
df