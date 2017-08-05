#Chap-1 R In action
#Chapter - 1 : Introduction
x = rnorm(5)
x
x1 <- rnorm(5)
x1

# I prefer = instead of <- 
# List 1.1
age <- c(1,3,5,2,11,9,3,9,12,3)
age
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
weight
mean(weight)

#[1] 7.06
sd(weight)
#[1] 2.077498
cor(age,weight)
#[1] 0.9075655

plot(age,weight)
