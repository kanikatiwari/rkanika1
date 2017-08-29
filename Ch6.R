#Chapter 

#Bar Plots
attach(mtcars)
barplot(gear)
library(vcd)
load(vcd)
Arthritis

counts=table(Arthritis$Improved)
counts

#Simple Bar Plot
barplot(counts, main="simple bar plot", xlab="Improvement", ylab="Frequency")
barplot(counts, main="simple bar plot", xlab="Improvement", ylab="Frequency", horiz=T)

library(vcd)
Arthritis

counts=table(Arthritis$Improved, Arthritis$Treatment)
counts

#Stacked and Group Bar Plots
barplot(counts, main="StackedBar Plot", xlab="Treatment", ylab="Frequency", col=c("red","yellow","green"), legends=rownames(counts))
barplot(counts, main="StackedBar Plot", xlab="Treatment", ylab="Frequency", col=c("red","yellow","green"), legends=rownames(counts),beside = T)

#Mean Bar Plot
states
states=data.frame(state.region,state.x77)
means=aggregate(states$Illiteracy,by=list(state.region),FUN=mean)
means
means=means[order(means$x),]
means
barplot(means$x, name.arg=means$Group.1)
title("Mean Bar Plot")

#Revision for graphs

#histogram
hist(s)
s

x1
hist(x1, breaks=5)

h=c(9,8,6,3,10,15,19,25,18,27,30,13)
l=c(1,2,3,4,5,6,7,8,9,10,11,12)
j=data.frame(i,h)
j
str(j)
as.numeric(h)
str(j)

plot(j, xlab='No.of Students', ylab='Marks', main='Result', col="chocolate3", cex=0.5, pch=19)

attach(mtcars)
hist(mpg, col="cyan4")
a=mpg/2
a


hist(j, col=rainbow (7),xlab='Marks', ylab='No.of Students', main='Result')

?text()
text(10,5,'a',pos=4)
mid=Marks/2
mid

#Tweaking Bar Plot

library(vcd)
Arthritis
par(mar=c(5,8,4,2))
par(las=2)
counts=table(Arthritis$Improved)
barplot(counts,
        main="Treatment Outcomes",
        horiz=TRUE,
        cex.names=0.8,
        names.arg=c("No Improvement","Some Improvement","Marked Improvement"),
        col=rainbow(3))

#Spinogram

attach(Arthritis)
counts=table(Treatment,Improved)
spine(counts,main="spinogram example", col=rainbow(3))

#Fan Plot

library(plotrix)
slices=c(10,12,4,16,8)
lbls=c('US','UK','Australia','Germany','France')
fan.plot(slices,labels=lbls,main="Fan Plot")

#par() function- put multiple graphs in a single plot by setting some graphical parameters
#mfrow fills in the subplot region row wise while mfcol fills it column wise.

par(mfrow=c(2,2))
slices=c(10,12,4,16,8)
lbls=c('US','UK','Australia','Germany','France')
pie(slices,labels=lbls, main="Sample of Charts")

pct=round(slices/sum(slices)*100)
lbls2=paste(lbls," ", pct,"%", sep="")
pie(slices, labels=lbls2, col=rainbow(length(lbls2)), main="Pie chart with percentage")

library(plotrix)
pie3D(slices,labels=lbls,explode=0.1,main="3D Pie Chart")

mytable=table(state.region)
lbls3=paste(names(mytable),"\n", mytable, sep="")
pie(mytable, labels=lbls3, main="Pie chart from a table\n(with sample sizes)")

#mfcol

par(mfcol=c(2,2))
slices=c(10,12,4,16,8)
lbls=c('US','UK','Australia','Germany','France')
pie(slices,labels=lbls, main="Sample of Charts")

pct=round(slices/sum(slices)*100)
lbls2=paste(lbls," ", pct,"%", sep="")
pie(slices, labels=lbls2, col=rainbow(length(lbls2)), main="Pie chart with percentage")

library(plotrix)
pie3D(slices,labels=lbls,explode=0.1,main="3D Pie Chart")

mytable=table(state.region)
lbls3=paste(names(mytable),"\n", mytable, sep="")
pie(mytable, labels=lbls3, main="Pie chart from a table\n(with sample sizes)")




