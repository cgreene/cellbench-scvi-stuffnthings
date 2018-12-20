library(ggplot2)
library(dplyr)
library(tidyr)

df <- read.csv('~/Desktop/cell_bench.csv')
head(df)

df %>%
  ggplot(aes(x=x, y=y, color=cell_line, shape=tech)) +
  geom_point() + scale_shape_manual(values = c(1,3))

dfe <- read.csv('~/Desktop/cell_bench_embedding.csv')

dfe %>%
  ggplot(aes(x= as.factor(LV), y=Activation, fill=tech)) +
  geom_violin()