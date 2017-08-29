#mba2=read.csv(file="mba1.csv",stringsAsFactors = F)
#mba2
#str(mba2)
#table(mba2$gender)
#mba2$gender[mba2$gender==" Male"] = "Male"
 
#mba2$gender=factor(mba2$gender, levels=c("Female","Male"))
#str(mba2)
#write.csv(file='mymba.csv', mba2)

# mba analysis -----
mba = read.csv('mymba.csv', stringsAsFactors = F)
str(mba)    - #check the structure of mba
#convert gender from chr to factor
mba$gender = factor(mba$gender, levels=c('Male','Female'))
#convert main specialisation from chr to factor
mba$main= factor(mba$main, levels=c("HR","Marketing","Finance"))
#convert sec specialisation from chr to factor
mba$sec= factor(mba$sec, levels=c("HR","Marketing","Finance"))
str(mba)
summary(mba)
mba
plot(mba$gender)
boxplot(mba$perc)
mba[c("name", "main", "sec")]
complete.cases(mba)
attach(mba)
hist(perc, ylab="no. of students", xlab="percentage", breaks=5)
plot(main)
plot(sec)
plot(gender)
boxplot(perc, notch=TRUE)
mean(mba)
