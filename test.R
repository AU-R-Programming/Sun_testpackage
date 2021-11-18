if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("devtools")

writefiles <- function(matrix_w,type)
{
  file_list <- colnames(matrix_w)
  files <- paste(file_list,".",type,sep="")
  for (i in 1:(dim(matrix_w)[2]))
  {
    temp <- cbind(as.matrix(rownames(matrix_w)),as.matrix(matrix_w[,i]))
    if(type == "txt")
    {write.table(temp,file=files[i],col.names = F,row.names = F,quote = F,sep = "\t")}
    if(type == "csv")
    {write.table(temp,file=files[i],col.names = F,row.names = F,quote = F,sep = ",")}
  }
}


