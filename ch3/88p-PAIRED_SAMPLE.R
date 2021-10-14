smoker <- c(16.6, 13.9, 11.3, 26.5, 17.4, 15.3, 15.8, 12.3, 18.6, 12.0, 24.1, 16.5, 21.8, 16.3, 23.4, 18.8)
no_smoker <- c(18.1, 6.0, 10.8, 11.0, 7.7, 17.9, 8.5, 13.0, 18.9)

t.test(smoker, no_smoker, var.equal = T)
t.test(smoker, no_smoker, var.equal = F)
'
	Two Sample t-test

data:  smoker and no_smoker
t = 2.658, df = 23, p-value = 0.01405
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 1.131680 9.076653
sample estimates:
mean of x mean of y
 17.53750  12.43333


	Welch Two Sample t-test

data:  smoker and no_smoker
t = 2.5964, df = 15.593, p-value = 0.01978
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 0.9279143 9.2804190
sample estimates:
mean of x mean of y
 17.53750  12.43333
'

# 둘 다 분산이 같든 다르든 0.05이하이므로 기각한다. 즉 둘은 다른 정규분포이다.