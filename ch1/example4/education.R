#Sys.setlocale("LC_CTYPE", ".1251")

edu <- read.table('./ch1/example4/eductation.txt', header = T,encoding = 'UTF-8')
edu
name <- edu[, 1]
grade70 <- edu[, 2]
grade90 <- edu[, 3]
par(mfrow = c(1, 2))
pie(grade70, label = name, clockwise = T, col = 2:5, main = '1970\ub144\ub3c4 \uc5ec\uc131 \ud559\ub825')
mtext(outer = F, '(a)', side = 1, line = -6)
pie(grade90, label = name, clockwise = T, col = 2:5, main = '1990\ub144\ub3c4 \uc5ec\uc131 \ud559\ub825')
mtext(outer = F, '(b)', side = 1, line = -6)