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
aggregate(mtcars[,c('mpg','hp','carb')], list(Cylinders=mtcars$cyl, transm=mtcars$am), mean)

split(mtcars, mtcars$cyl)
?sapply
sapply(split(mtcars$mpg, mtcars$cyl), var)
lapply(split(mtcars$mpg, mtcars$cyl), var)
tapply(split(mtcars$mpg, mtcars$cyl), var)
vapply(mtcars, FUN=fivenum, FUN.VALUE = c(Min. = 0, "1st Qu." = 0, Median = 0, "3rd Qu." = 0, Max. = 0))
tapply(X=mtcars$mpg, INDEX = mtcars$cyl, mean)
?tapply
