crab_temperature <- c(
  25.8, 24.6, 26.1, 22.9, 25.1,
  27.3, 24.0, 24.5, 23.9, 26.2,
  24.3, 24.6, 23.3, 25.5, 28.1,
  24.8, 23.5, 26.3, 25.4, 25.5,
  23.9, 27.0, 24.8, 22.9, 25.4
)
#귀무가설
mu <- 24.3
t.test(crab_temperature, mu = mu)
#이거 해보면 pvalue가 0.012가 나온다. 따라서 같지 않다.
'
	One Sample t-test

data:  crab_temperature
t = 2.7128, df = 24, p-value = 0.01215
alternative hypothesis: true mean is not equal to 24.3
95 percent confidence interval:
 24.47413 25.58187
sample estimates:
mean of x
   25.028
'