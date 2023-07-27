
#读取文件
mydata1 <- read.table(file = '文档主题分布矩阵.txt',header = T)
#找到文件所在位置（点击式），myfile1和myfile2存储的只是路径，不是文件内容
result <- c()
for ( index in 1:nrow(mydata1)) {
   gini <- Gini(mydata1[index,], weights = NULL, unbiased = TRUE,
   conf.level = NA, R = 10000, type = "bca", na.rm = FALSE)
   result[index] <- gini
}
mean(result)
var(result)
