#factor
sname=c("tanvi","kanika","roxy","piko","mama")
sgender=c("F","F","F","M","M")
sgrade=c("A","B","C","D","F")
sname
sgender
sgrade
class(sgender)
student=data.frame(sname,sgender,sgrade)
student
str(student)
student1=data.frame(sname,sgender,sgrade, stringsAsFactors = F)
str(student1)
#student2=data.frame(sname,sgender,sgrade,colClasses = c("character","factor","factor") )
?data.frame
?read.csv
student1$sgender=factor(student1$sgender, levels=c("F","M"))
str(student1)
student1$sgrade=factor(student1$sgrade, levels=c('D','A','B','C','F'), ordered=T)
str(student1)
summary(student1)

student1$sgrade
student1$sname
student1[1,2]
student1[c(2,3),c(1,3)]
student1[c(1,2)]
student1[c(1),]
student1[c(4),]


#matrices
mymatrix=matrix(1:24, nrow=4, byrow=F)
mymatrix
mymatrix[2,3]
mymatrix[,4]
mymatrix[3,]
mymatrix[,c(2,4)]
mymatrix[c(2,3),c(2,4)]
mymatrix[24]

