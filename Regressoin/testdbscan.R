# Load the data 
data("multishapes", package = "factoextra")
df <- multishapes[, 1:2]
# Compute DBSCAN using fpc package
library("fpc")
set.seed(123)
db <- fpc::dbscan(df, eps = 0.15, MinPts = 5)
# Plot DBSCAN results
library("factoextra")
fviz_cluster(db, data = df, stand = FALSE,
             ellipse = FALSE, show.clust.cent = FALSE,
             geom = "point",palette = "jco", ggtheme = theme_classic())

print

dbscan::kNNdistplot(df, k =  5)
abline(h = 0.15, lty = 2)




data(iris)
iris <- as.matrix(iris[,1:4])

## find suitable eps parameter using a k-NN plot for k = dim + 1
## Look for the knee!
kNNdistplot(iris, k = 5)
abline(h=.5, col = "red", lty=2)

res <- dbscan(iris, eps = .5, minPts = 5)
res

pairs(iris, col = res$cluster + 1L)

## use precomputed frNN
fr <- frNN(iris, eps = .5)
dbscan(fr, minPts = 5)

## example data from fpc
set.seed(665544)
n <- 100
x <- cbind(
  x = runif(10, 0, 10) + rnorm(n, sd = 0.2),
  y = runif(10, 0, 10) + rnorm(n, sd = 0.2)
)

res <- dbscan(x, eps = .3, minPts = 3)
res

## plot clusters and add noise (cluster 0) as crosses.
plot(x, col=res$cluster)
points(x[res$cluster==0,], pch = 3, col = "grey")

hullplot(x, res)

## predict cluster membership for new data points
## (Note: 0 means it is predicted as noise)
newdata <- x[1:5,] + rnorm(10, 0, .2)
predict(res, x, newdata)