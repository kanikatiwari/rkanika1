#Statistics

#Observation :
 # Marks : 10 , 12, 13, 14 , 17, 18, 17, 13

Marks=c(10,12,13,14,17)
mean(Marks)
median(Marks)
mode(Marks)
?mode

Marks=c(10,12,13,14,17)
Students=c(5,7,9,8,4)
Result=data.frame(Marks, Students)
Result
fx=Marks*Students
fx=sum(fx)

totalf=sum(Students)
totalf
mean=fx/totalf
mean

summary(Results)
(x=c(rep(10, 5), rep(12, 7), rep(13,9), rep(14,8), rep(17, 4)))
mean(x)
x1=rep(c(10, 12,13,14,17), c(5,7,9,8,4))
x1
mean(x1)

c=c('10-20','20-30','30-40','40-50','60-70','70-80','80-90')
y=strsplit(c,"-")
(y1=unlist(y))
(y2=as.numeric(y1))
y3=unique(y2)
y3
y3[-length(y3)]
diff(y3)/2
y4=y3[-length(y3)]+diff(y3)/2
y4
x1=rep(y4, c(5,7,9,8,4,6,8,9))
x1
mean(x1)

s=table(x1)
s

breaks = seq(x1, by=10)    # half-integer sequence 
breaks 

x1
str(x1)

durations=x1
range(durations)
durations

breaks=seq(10,90, by=10)
breaks

duration.cut=cut(durations,breaks,right=F)
duration.cut
t(duration.freq)
(duration.freq=table(duration.cut))
cbind(duration.freq)
median(duration.freq)
hist(x1)
hist(density(x1))
plot(density(x1))
abline(v=mean(x1))
mean(x1)
abline(v=c(35,85))
text(35,0.006,'mode1')
density(x1)$x
(sum(density(x1)$y))
