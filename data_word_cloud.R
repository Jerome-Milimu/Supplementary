

library(ggplot2)
library(tidyverse)
library(RColorBrewer)
library(wordcloud)
library(rio)

#> Loading required package: ggplot2
data <- as_tibble(import("sa_word_cloud.csv"))
data

set.seed(100)
wordcloud(words = data$item, freq = data$frequency, min.freq = 3, max.words=250, 
          random.order=FALSE, rot.per=0.30, colors=brewer.pal(8, "Dark2"))

