read.csv(file="mymba.csv")
mba
str(mba)
ls()
save.image(file='kanika.Rdata')
load('kanika.Rdata')
rm(list=ls())
attach(mba)
barplot(mba$perc, width=1, space=NULL, col="blue", border=par("fg"), 
xlab="percentage", ylab="no of students",main="Main specialition")
hist(mba$main)
plot(mba$main)
mba$main
pie(table(mba$main), col=rainbow(3))
dim(table(mba$main))
barplot(VADeaths, beside=TRUE, legend=FALSE)
legend('top', legend=colnames(VADeaths), title="Age Catgory", horiz=T)

wip=read.csv(file="wipro.csv", stringsAsFactors = FALSE)
str(wip)
boxplot(wip$Close.Price, wip$Low.Price, wip$Open.Price, wip$High.Price)
