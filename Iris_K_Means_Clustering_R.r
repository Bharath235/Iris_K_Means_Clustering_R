library(ISLR)

head(iris)

df <- iris[1:4]

library(ggplot2)

ggplot(iris, aes(Petal.Length, Petal.Width, color=Species)) + geom_point(size=4, alpha=0.5)

set.seed(101)

cluster <- kmeans(df, 3, nstart=20)
print(cluster)

table(cluster$cluster, iris$Species)

library(cluster)

clusplot(df,cluster$cluster, color=T, shade=T, labels=0, lines=0)


