# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-10-09

mat <- matrix(c(71, 85, 59, 96), nrow = 2, byrow = T)
dimnames(mat) <- list(
    rowvalue = c('받음', '받지 않음'),
    colvalue = c('3년 내 재발', '3년 내 재발 안함')
)
mat
chisq.test(mat)