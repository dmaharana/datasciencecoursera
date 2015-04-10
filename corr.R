corr <- function(directory, threshold = 0) {
   resultV <- numeric()
   file_list <- list.files(directory, full.names = T)
   print(length(file_list))
   for (i in 1:length(file_list)) {
       mydata <- na.omit(read.csv(file_list[i]))
       compRows <- nrow(mydata)
       if (compRows > threshold){
	  corrVal = cor(mydata$nitrate, mydata$sulfate)
	  resultV <- c(resultV, corrVal)
       }
   return(resultV)
   }
}
