library(tidyverse)
tmp <- getwd()
AMD <- read_csv("AMD.csv")
setwd(tmp)
p <- ggplot(data = AMD, mapping = aes(x = Date, y =  Close))
p + geom_point()+ labs(x = "Date", y = "Adjusted Closing Price", 
       title = "AMD Adjusting Closing Prices 2/24/2021 to 2/24/2022")