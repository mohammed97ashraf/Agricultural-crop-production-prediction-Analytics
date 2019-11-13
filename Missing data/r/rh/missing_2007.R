

dataset = read.csv('2007 .csv')

# Taking care of missing data
#jan
dataset$Jan = ifelse(is.na(dataset$Jan),
                     ave(dataset$Jan, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Jan)
#feb
dataset$Feb = ifelse(is.na(dataset$Feb),
                     ave(dataset$Feb, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Feb)
#march
dataset$Mar = ifelse(is.na(dataset$Mar),
                     ave(dataset$Mar, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Mar)
#April 
dataset$Apr = ifelse(is.na(dataset$Apr),
                     ave(dataset$Apr, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Apr)
#May
dataset$May = ifelse(is.na(dataset$May),
                     ave(dataset$May, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$May)
#June 
dataset$Jun = ifelse(is.na(dataset$Jun),
                     ave(dataset$Jun, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Jun)
#July
dataset$Jul = ifelse(is.na(dataset$Jul),
                     ave(dataset$Jul, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Jul)
#August 
dataset$Aug = ifelse(is.na(dataset$Aug),
                     ave(dataset$Aug, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Aug)
#September 
dataset$Sep = ifelse(is.na(dataset$Sep),
                     ave(dataset$Sep, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Sep)
#October 
dataset$Oct = ifelse(is.na(dataset$Oct),
                     ave(dataset$Oct, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Oct)
#November
dataset$Nov = ifelse(is.na(dataset$Nov),
                     ave(dataset$Nov, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Nov)
#December 
dataset$Dec = ifelse(is.na(dataset$Dec),
                     ave(dataset$Dec, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Dec)

#saveing the file
write.csv(dataset,'m2007.csv')

#finding missing data
is.na(dataset)
sapply(dataset, function(dataset) sum(is.na(dataset)))