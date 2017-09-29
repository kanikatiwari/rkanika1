k=matrix(1:12, nrow=3)
k
#row sums
rowSums(k)
cbind(k, rowSums(k))
addmargins(k,2, FUN=list(list(mean, sum)))
fivenum(k[1,])
summary(k[1,])
margin.table(k)
margin.table(k,1)
margin.table(k,2)
margin.table(k,c(1,2))

a=as.array(k)
a
#data frame
df=as.data.frame(a)
df
str(df)
colSums(df)
rowSums(df)
rowMeans(df)
cbind(df, rowMeans(df))
rbind(df,colMeans(df))
addmargins(as.matrix(df), c(1,2), FUN=list(list(mean, sd)))

(q=as.matrix(df))
df

?rowsum
rowsum(mtcars, group=mtcars$gear)

aggregate(mtcars, list(group=mtcars$cyl), mean)[-1]
aggregate(mtcars[,1:5], list(group=mtcars$cyl), mean)[-1]
aggregate(mtcars[,c('mpg','hp','carb')], list(Cylinders=mtcars$cyl, transm=mtcars$am), var)

split(mtcars, mtcars$cyl)
?sapply
sapply(split(mtcars$mpg, mtcars$cyl), var)
lapply(split(mtcars$mpg, mtcars$cyl), var)
tapply(split(mtcars$mpg, mtcars$cyl), var)
vapply(mtcars, FUN=fivenum, FUN.VALUE = c(Min. = 0, "1st Qu." = 0, Median = 0, "3rd Qu." = 0, Max. = 0))
tapply(X=mtcars$mpg, INDEX = mtcars$cyl, mean)
?tapply

#practice

z=matrix(1:15, nrow=5, byrow=T)
z
(cbind(z,rsum=rowSums(z)))
(rbind(z,csum=colSums(z)))
(cbind(z,rmean=rowMeans(z)))
(rbind(z,cmean=colMeans(z)))
(addmargins(z, FUN=list(list(sum, mean))))
(margin.table(z))

aggregate(mtcars[,c('mpg','hp','carb')], list(Cylinders=mtcars$cyl, transm=mtcars$am), mean)

aggregate(z, FUN="mean")

price=c(90,90,100,90,100,150,150)
demand=c(85,80,110,120,86,76,55)
df=data.frame(price, demand)
df
cor(df$price,df$demand)
fivenum(df)
?apply
apply(df,1,length)

df[order(df$price, -df$demand),]
df[rev(order(df$price)),]
order(df$price)
df
sort(df$price)
rank(df$price, ties.method = 'max')

df
?aggregate.data.frame

sd(df$price)
df
(gp = c(rep(c('A','B'),3), 'A'))
df$gp = factor(gp)
df$gp2 = factor(gp)

df
split(df, gp)
aggregate.data.frame(df[c('price','demand')], by=list(df$gp), mean)
aggregate.data.frame(df[c('price','demand')], by=list(df$gp), var)
aggregate.data.frame(df[c('price','demand')], by=list(stdev = df$gp), sd)

aggregate.data.frame(df, by=list(df$gp), mean)
aggregate(df[], by=list(df$gp, df$gp2), mean)
aggregate(df[1:2], by=list(df$gp, df$gp2), mean)[-1]
df[-c(1,2)]
plot(df$price, df$demand)

price=c(85,90,150,110,120,80)
demand=c(120,105,80,90,75,100)
pd=data.frame(price,demand)
pd
plot(price, demand)
lines(price, demand)
pd=sort(pd$price)
pd
pd1 = pd[order(pd$price),]
pd1
plot(pd1)
lines(pd1)
x = ceiling(runif(50, 50,100))
y = ceiling(runif(50, 50,100))
plot(x,y)
lines(x,y)
xy=data.frame(x,y)
xy1=xy[order(xy$x),]

plot(xy1)
lines(xy1)
text(xy1$x+.5,xy1$y+.5, paste(xy1$x,xy1$y, sep='-'), cex=.5, col='red')
text(xy1$x+.5,xy1$y+.5, paste0('(',xy1$x,',', xy1$y,')'), cex=.5, col='red')
?jitter
jitter(xy1$x)
rug(jitter(xy1$x))

k = ceiling(runif(50, 50,100))
plot(k)
lines(k)
text(k, paste(k,1:50, collapse = '-'), cex=.5, col='red')
paste(1:50,1:50,  sep=',', collapse = ':')
?paste
paste0('(',1:50,'-',1:50,')')

#practice 2

?apply
?sapply

x=matrix(1:14, nrow=7, byrow=F)
x
apply(x, 1, mean)
cbind(x,mean=apply(x, 1, mean))
lapply(x, sum)

attach(women)
sapply(split(women$height), mean)
sapply(split(mtcars$mpg, mtcars$cyl), var)
lapply(split(mtcars$mpg, mtcars$cyl), var
tapply(split(mtcars$mpg, mtcars$cyl), var)
vapply(mtcars, FUN=fivenum, FUN.VALUE = c(min=0, 1st Qu, Median, 3rd Qu, Max))
tapply(X=mtcars$mpg, INDEX = mtcars$cyl, mean)
       