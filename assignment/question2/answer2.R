# Title     : TODO
# Objective : TODO
# Created by: justk
# Created on: 2021-10-08

open_surgery <- c(12, 10, 14, 12, 11, 9, 9, 11, 11, 8)
laparoscopic_surgery <- c(9, 7, 8, 6, 6, 7, 10, 10)
robot_sergery <- c(5, 6, 7, 7, 7, 4, 5)
all <- c(open_surgery, laparoscopic_surgery, robot_sergery)
group <- factor(
    rep(
        c(
            '개복 수술',
            '복강경 수술',
            '로봇 수술'
        ),
        c(
            length(open_surgery),
            length(laparoscopic_surgery),
            length(robot_sergery)
        )
    )
)
(result <- aov(all ~ group))
summary(result)
par(mfrow = c(2, 2))
plot(result, col = 1:3)
legend(
    'left',
    c(
        '개복 수술',
        '복강경 수술',
        '로봇 수술'
    ),
    pch = 1,
    col = 1:3
)