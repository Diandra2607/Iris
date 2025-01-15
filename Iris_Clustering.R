data(iris)
iris
summary(iris)
summary(is.na(iris))
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width, col = Species)) + geom_point()
ggplot(iris,aes(x=Petal.Length,y=Petal.Width, col = Species)) + geom_point()

fviz_nbclust(iris[1:4],kmeans,method='wss')

Kmean <- kmeans(iris[1:4],3)
Kmean$centers
Kmean$cluster
print(Kmean)

fviz_cluster(Kmean,data=iris[1:4])