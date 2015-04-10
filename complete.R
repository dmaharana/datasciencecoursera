complete <- function(directory, id) {
   file_list <- list.files(directory, full.names = T)
   resulDF <- data.frame(id = numeric(), nobs = numeric())
   for (i in id) {
       compRows <- nrow(na.omit(read.csv(file_list[i])))
       resulDF <- rbind(resulDF, data.frame(id = i, nobs = compRows))
       #resulDF$id = rbind(resulDF$id, i)
       #resulDF$nobs = rbind(resulDF$nobs, compRows)
   }
   print(resulDF)
}
