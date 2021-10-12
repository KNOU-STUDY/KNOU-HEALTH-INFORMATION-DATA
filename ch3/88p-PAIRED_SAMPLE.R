smoker <- c(16.6, 13.9, 11.3, 26.5, 17.4, 15.3, 15.8, 12.3, 18.6, 12.0, 24.1, 16.5, 21.8, 16.3, 23.4, 18.8)
no_smoker <- c(18.1, 6.0, 10.8, 11.0, 7.7, 17.9, 8.5, 13.0, 18.9)

boxplot(smoker, no_smoker, col = 'yellow', names = c('흡연자', '비흡연자'))
points(c(mean(smoker), mean(no_smoker)), pch = 10, cex = 2)
library(vioplot)
vioplot(smoker, no_smoker, col = 'yellow', rectCol = 'grey', names = c('흡연자', '비흡연자'))
points(c(mean(smoker), mean(no_smoker)), pch = 10, cex = 1.5)
