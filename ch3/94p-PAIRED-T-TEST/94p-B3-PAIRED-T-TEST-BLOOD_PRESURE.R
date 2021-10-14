before_blood_presure <- c(
  90, 56, 49, 64, 65,
  88, 62, 91, 74, 93,
  55, 71, 54, 64, 54
)
after_blood_presure <- c(
  72, 55, 56, 57, 62,
  79, 55, 72, 73, 74,
  58, 59, 58, 71, 61
)
diff <- after_blood_presure - before_blood_presure
qqnorm(diff, col = 2)
qqline(diff, col = 3, lty = 2)
shapiro.test(diff)
# 이 검정으로 차이는 정규분포를 이룬다.
t.test(
  before_blood_presure,
  after_blood_presure,
  paired = T,
  alternative = 'greater'
)
# p값이 0.05보다 작으니 기각할 수 있다. 즉 둘의 차이는 충분히 크다고 본다.