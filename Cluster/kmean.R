#importing data
dataset <- read.csv('Book1.csv')
#set_index as district name
rownames(dataset) <- dataset$District_Name
df <- dataset[,c("Rain_Fall","Temp","Humidity")]
df <- scale(df)

library(factoextra)
fviz_nbclust(df, kmeans, method = "wss") +
  geom_vline(xintercept = 4, linetype = 3)

# Compute k-means with k = 4
set.seed(123)
km.res <- kmeans(df, 5, nstart = 25)

fviz_cluster(km.res, data = df,
             palette = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07","#7B4579"), 
             ellipse.type = "euclid", # Concentration ellipse
             star.plot = TRUE, # Add segments from centroids to items
             repel = TRUE, # Avoid label overplotting (slow)
             ggtheme = theme_minimal()
)


print(km.res)

#cheking which record belongs to witch cluster
km.res$cluster

# Cluster size
km.res$size