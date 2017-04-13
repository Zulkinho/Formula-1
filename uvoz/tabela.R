library(knitr)
library(rvest)
library(dplyr)
library(gsubfn)
library(ggplot2)


htmlAustralia <- html_session("https://www.formula1.com/en/results.html/2016/races/94/great-britain/race-result.html") %>% read_html
html_tabelaAustralia <- htmlAustralia %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaAustralia <- html_tabelaAustralia %>% html_table()
