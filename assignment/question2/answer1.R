# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-10-08

open_surgery <- c(12, 10, 14, 12, 11, 9, 9, 11, 11, 8)
laparoscopic_surgery <- c(9, 7, 8, 6, 6, 7, 10, 10)
robot_sergery <- c(5, 6, 7, 7, 7, 4, 5)
boxplot(
    open_surgery,
    laparoscopic_surgery,
    robot_sergery,
    col = 2:4,
    names = c('개복 수술', '복강경 수술', '로봇 수술')
)
points(
    c(
        mean(open_surgery),
        mean(laparoscopic_surgery),
        mean(robot_sergery)
    ),
    pch = 10,
    cex = 2,
    col = 5:7,
)