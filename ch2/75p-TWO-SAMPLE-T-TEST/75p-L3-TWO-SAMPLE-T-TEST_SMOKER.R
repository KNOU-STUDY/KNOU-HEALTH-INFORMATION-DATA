smoker <- c(16.6, 13.9, 11.3, 26.5, 17.4, 15.3, 15.8, 12.3, 18.6, 12.0, 24.1, 16.5, 21.8, 16.3, 23.4, 18.8)
no_smoker <- c(18.1, 6.0, 10.8, 11.0, 7.7, 17.9, 8.5, 13.0, 18.9)
t.test(smoker, no_smoker, var.equal = T)
t.test(smoker, no_smoker, var.equal = F)