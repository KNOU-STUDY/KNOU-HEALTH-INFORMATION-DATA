# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-10-09

#install.packages('survival')
library(survival)

kidney_transplant_patient <- c(
    '66', '408', '425', '120+', '54',
    '2150', '97+', '519+', '696', '873',
    '1038', '633', '361+', '31', '1583'
)
time <- NULL
status <- NULL
for (atom in kidney_transplant_patient) {
    if (ret <- strsplit(atom, '')[[1]][nchar(atom)] == '+') {
        time <- c(
            time,
            as.numeric(substr(atom, 1, nchar(atom) - 1))
        )
        status <- c(
            status,
            0
        )
    }else {
        time <- c(
            time,
            as.numeric(atom)
        )
        status <- c(
            status,
            1
        )
    }
}
df <- data.frame(time = time, status = status)
result <- survfit(Surv(time, status) ~ 1, conf.type = 'log-log', data = df)
plot(result, xlab = '시간', ylab = '생존함수', mark.time = T, col = c(2, 3, 3))
legend(0.5, 0.2, c('누적한계추정값', '95% 신뢰구간'), lty = c(1, 2), col = 2:4)