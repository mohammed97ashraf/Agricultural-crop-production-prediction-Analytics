
#importing data
dataset <- read.csv('proction.csv')
#set_index as district name
rownames(dataset) <- dataset$District_Name
df <- dataset[,c("Area","Production")]
df <- scale(df)

#computes PAM
library(cluster)
library(factoextra)
set.seed(123)
pam.res <- pam(df, 3)

#printing pam result
print(pam.res)

#get the medoids centroats
pam.res$medoids

# Cluster numbers
pam.res$clustering

#Visualizind the cluster
fviz_cluster(pam.res, 
             palette = c("#00AFBB", "#FC4E07","#497B45"), # color palette
             ellipse.type = "t", # Concentration ellipse
             repel = TRUE, # Avoid label overplotting (slow)
             ggtheme = theme_classic()
)



pam.res1 <- pam(df, 2)

#clusteing valideton
#install.packages('clValid')
library(clValid)
stab <- clValid(df, nClust = 2:3, clMethods = "PAM", 
        validation = "stability", maxitems = 600,
        metric = "euclidean", method = "average")
optimalScores(stab)