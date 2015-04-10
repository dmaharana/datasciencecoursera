pollutantmean <- function(directory, pollutant, id) {
   file_list <- list.files(directory, full.names = T)
   dat <- data.frame()
   for (i in id) {
       dat <- rbind(dat, read.csv(file_list[i]))
   }
   #poldata <- dat[[pollutant]]
   #meanpol <- mean(poldata, na.rm = T)
   meanpol <- mean(dat[,pollutant], na.rm = T)
   print(meanpol)

}
