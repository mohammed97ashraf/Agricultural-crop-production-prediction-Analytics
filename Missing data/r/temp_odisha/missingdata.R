

dataset = read.csv('2012.csv')

# Taking care of missing data
#jan
dataset$Jan.Max. = ifelse(is.na(dataset$Jan.Max.),
                      ave(dataset$Jan.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                      dataset$Jan.Max.)
dataset$Jan.Min. = ifelse(is.na(dataset$Jan.Min.),
                          ave(dataset$Jan.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Jan.Min.)
#feb
dataset$Feb.Max. = ifelse(is.na(dataset$Feb.Max.),
                          ave(dataset$Feb.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Feb.Max.)
dataset$Feb.Min. = ifelse(is.na(dataset$Feb.Min.),
                          ave(dataset$Feb.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Feb.Min.)
#march
dataset$Mar.Max. = ifelse(is.na(dataset$Mar.Max.),
                          ave(dataset$Mar.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Mar.Max.)
dataset$Mar.Min. = ifelse(is.na(dataset$Mar.Min.),
                          ave(dataset$Mar.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Mar.Min.)
#April 
dataset$Apr.Max. = ifelse(is.na(dataset$Apr.Max.),
                          ave(dataset$Apr.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Apr.Max.)
dataset$Apr.Min. = ifelse(is.na(dataset$Apr.Min.),
                          ave(dataset$Apr.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Apr.Min.)
#May
dataset$May.Max. = ifelse(is.na(dataset$May.Max.),
                          ave(dataset$May.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$May.Max.)
dataset$May.Min. = ifelse(is.na(dataset$May.Min.),
                          ave(dataset$May.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$May.Min.)
#June 
dataset$Jun.Max. = ifelse(is.na(dataset$Jun.Max.),
                          ave(dataset$Jun.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Jun.Max.)
dataset$Jun.Min. = ifelse(is.na(dataset$Jun.Min.),
                          ave(dataset$Jun.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Jun.Min.)
#July
dataset$Jul.Max. = ifelse(is.na(dataset$Jul.Max.),
                          ave(dataset$Jul.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Jul.Max.)
dataset$Jul.Min. = ifelse(is.na(dataset$Jul.Min.),
                          ave(dataset$Jul.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Jul.Min.)
#August 
dataset$Aug.Max. = ifelse(is.na(dataset$Aug.Max.),
                          ave(dataset$Aug.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Aug.Max.)
dataset$Aug.Min. = ifelse(is.na(dataset$Aug.Min.),
                          ave(dataset$Aug.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Aug.Min.)
#September 
dataset$Sep.Max. = ifelse(is.na(dataset$Sep.Max.),
                          ave(dataset$Sep.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Sep.Max.)
dataset$Sep.Min. = ifelse(is.na(dataset$Sep.Min.),
                          ave(dataset$Sep.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Sep.Min.)
#October 
dataset$Oct.Max. = ifelse(is.na(dataset$Oct.Max.),
                          ave(dataset$Oct.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Oct.Max.)
dataset$Oct.Min. = ifelse(is.na(dataset$Oct.Min.),
                          ave(dataset$Oct.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Oct.Min.)
#November
dataset$Nov.Max. = ifelse(is.na(dataset$Nov.Max.),
                          ave(dataset$Nov.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Nov.Max.)
dataset$Nov.Min. = ifelse(is.na(dataset$Nov.Min.),
                          ave(dataset$Jan.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Nov.Min.)
#December 
dataset$Dec.Max. = ifelse(is.na(dataset$Dec.Max.),
                          ave(dataset$Dec.Max., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Dec.Max.)
dataset$Dec.Min. = ifelse(is.na(dataset$Dec.Min.),
                          ave(dataset$Dec.Min., FUN = function(x) mean(x, na.rm = TRUE)),
                          dataset$Dec.Min.)

#saveing the file
write.csv(dataset,'temp2012.csv')

#finding missing data
is.na(dataset)
sapply(dataset, function(dataset) sum(is.na(dataset)))