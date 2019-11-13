#importing data
dataset <- read.csv('rice.csv')
#set_index as district name
rownames(dataset) <- dataset$District_name
df <- dataset[,c("Area","Rain_Fall","Temp","Humidity","Production")]
df <- scale(df)

library(cluster)
library(factoextra)
fviz_nbclust(df, clara, method = "silhouette")+
  theme_classic()

# Compute CLARA
clara.res <- clara(df, 3, samples = 50, pamLike = TRUE)
# Print components of clara.res
print(clara.res)

# Visualize
library("factoextra")
fviz_cluster(clara.res, data = my_data, 
             ellipse.type = "convex",
             palette = "jco",
             repel = TRUE,
             ggtheme = theme_minimal())

