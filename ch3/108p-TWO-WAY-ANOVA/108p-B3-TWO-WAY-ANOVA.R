medical_device <- read.table('./common_data/의보장구사용숙지시간자료.txt', header = T)
levels(medical_device$`나이`) <- c('20미만', '20-29', '30-39', '40-49', '50 이상')
two_aov <- aov(medical_device$`숙지시간` ~ medical_device$`나이` + medical_device$`방법`)
two_aov
summary(two_aov)

par(mfrow=c(2,2))
plot(two_aov)