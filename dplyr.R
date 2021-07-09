library("tidyverse")

ab <- read_csv('C:/Users/U6085190/Desktop/R/msleep_ggplot2.csv')

ab %>% glimpse() %>% tail()

ab %>% arrange(name)

ab %>% arrange(genus)

