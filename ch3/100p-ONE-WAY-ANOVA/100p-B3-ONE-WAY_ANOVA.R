# 자폐아
autistic <- c(
  755, 365, 820, 900, 170,
  300, 325, 385, 380, 215,
  400, 343, 415, 345, 410,
  460, 225, 440, 400, 360,
  435, 450, 360
)
# 정상아
normal <- c(
  165, 390, 290, 435, 235,
  345, 320, 330, 205, 375,
  345, 305, 220, 270, 355,
  360, 335, 305, 325, 245,
  285, 370, 345, 345, 230,
  370, 285, 315, 195, 270,
  305, 375, 220
)
# 지진아
retard <- c(
  380, 510, 315, 565, 715,
  380, 390, 245, 155, 335,
  295, 200, 105, 105, 245
)
par(mfrow = c(1, 2))
boxplot(
  autistic,
  normal,
  retard,
  col = 3:5,
  names = c('자폐아', '정상아', '지진아')
)
points(c(mean(autistic), mean(normal), mean(retard)))
library(vioplot)
vioplot(
  autistic,
  normal,
  retard,
  col = 3:5,
  rectCol = 'grey',
  names = c('자폐아', '정상아', '지진아')
)
points(c(mean(autistic), mean(normal), mean(retard)))

rate <- c(
  autistic,
  normal,
  retard
)
group <- factor(rep(c('자폐아', '정상아', '지진아'), c(length(autistic), length(normal), length(retard))))
aov_result <- aov(rate ~ group)

par(mfrow = c(2, 2))
plot(aov_result)
fligner.test(rate ~ group)

# residual = 잔차
par(mfrow = c(1, 1))
residual <- residuals(aov_result)
qqnorm(residual, col = 2)
qqline(residual, lty = 2, col = 3)
shapiro.test(residual)

