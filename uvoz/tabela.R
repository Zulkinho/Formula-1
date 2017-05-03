library(knitr)
library(rvest)
library(dplyr)
library(gsubfn)
library(ggplot2)


htmlZmagovalci <- html_session("https://www.formula1.com/en/results.html/2016/races/94/great-britain/race-result.html") %>% read_html
html_tabelaZmagovalci16 <- htmlZmagovalci %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaZmagovalci <- html_tabelaZmagovalci%>% html_table()
tabelaZmagovalci<-tabelaZmagovalci[2:7]

htmlAvstralija16 <- html_session("https://www.formula1.com/en/results.html/2016/races/938/australia.html") %>% read_html
html_tabelaAvstralija16 <- htmlAvstralija16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaAvstralija16 <- html_tabelaAvstralija16%>% html_table()
tabelaAvstralija16 <-tabelaAvstralija16[2:7]

htmlBahrain16 <- html_session("https://www.formula1.com/en/results.html/2016/races/939/bahrain/race-result.html") %>% read_html
html_tabelaBahrain16 <- htmlBahrain16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaBahrain16 <- html_tabelaBahrain16%>% html_table()
tabelaBahrain16 <-tabelaBahrain16[2:7]

htmlChina16 <- html_session("https://www.formula1.com/en/results.html/2016/races/940/china/race-result.html") %>% read_html
html_tabelaChina16 <- htmlChina16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaChina16 <- html_tabelaChina16%>% html_table()
tabelaChina16 <-tabelaChina16[2:7]

htmlRussia16 <- html_session("https://www.formula1.com/en/results.html/2016/races/942/spain/race-result.html") %>% read_html
html_tabelaRussia16 <- htmlRussia16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaRussia16 <- html_tabelaRussia16%>% html_table()
tabelaRussia16 <-tabelaRussia16[2:7]

htmlSpain16 <- html_session("https://www.formula1.com/en/results.html/2016/races/941/russia/race-result.html") %>% read_html
html_tabelaSpain16 <- htmlSpain16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaSpain16 <- html_tabelaSpain16%>% html_table()
tabelaSpain16 <-tabelaSpain16[2:7]

htmlMonaco16 <- html_session("https://www.formula1.com/en/results.html/2016/races/943/monaco/race-result.html") %>% read_html
html_tabelaMonaco16 <- htmlMonaco16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaMonaco16 <- html_tabelaMonaco16%>% html_table()
tabelaMonaco16 <-tabelaMonaco16[2:7]

htmlCanada16 <- html_session("https://www.formula1.com/en/results.html/2016/races/943/monaco/race-result.html") %>% read_html
html_tabelaCanada16 <- htmlCanada16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaCanada16 <- html_tabelaCanada16%>% html_table()
tabelaCanada16 <-tabelaCanada16[2:7]

htmlEurope16 <- html_session("https://www.formula1.com/en/results.html/2016/races/958/europe/race-result.html") %>% read_html
html_tabelaEurope16 <- htmlEurope16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaEurope16 <- html_tabelaEurope16%>% html_table()
tabelaEurope16 <-tabelaEurope16[2:7]

htmlAustria16 <- html_session("https://www.formula1.com/en/results.html/2016/races/945/austria/race-result.html") %>% read_html
html_tabelaAustria16 <- htmlAustria16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaAustria16 <- html_tabelaAustria16%>% html_table()
tabelaAustria16 <-tabelaAustria16[2:7]

htmlGreatBritain16 <- html_session("https://www.formula1.com/en/results.html/2016/races/946/great-britain/race-result.html") %>% read_html
html_tabelaGreatBritain16 <- htmlGreatBritain16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaGreatBritain16 <- html_tabelaGreatBritain16%>% html_table()
tabelaGreatBritain16 <-tabelaGreatBritain16[2:7]

htmlHungary16 <- html_session("https://www.formula1.com/en/results.html/2016/races/947/hungary/race-result.html") %>% read_html
html_tabelaHungary16 <- htmlHungary16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaHungary16 <- html_tabelaHungary16%>% html_table()
tabelaHungary16 <-tabelaHungary16[2:7]

htmlGermany16 <- html_session("https://www.formula1.com/en/results.html/2016/races/948/germany/race-result.html") %>% read_html
html_tabelaGermany16 <- htmlGermany16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaGermany16 <- html_tabelaGermany16%>% html_table()
tabelaGermany16 <-tabelaGermany16[2:7]

htmlBelgium16 <- html_session("https://www.formula1.com/en/results.html/2016/races/949/belgium/race-result.html") %>% read_html
html_tabelaBelgium16 <- htmlBelgium16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaBelgium16 <- html_tabelaBelgium16%>% html_table()
tabelaBelgium16 <-tabelaBelgium16[2:7]

htmlItaly16 <- html_session("https://www.formula1.com/en/results.html/2016/races/950/italy/race-result.html") %>% read_html
html_tabelaItaly16 <- htmlItaly16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaItaly16 <- html_tabelaItaly16%>% html_table()
tabelaItaly16 <-tabelaItaly16[2:7]

htmlSingapore16 <- html_session("https://www.formula1.com/en/results.html/2016/races/951/singapore/race-result.html") %>% read_html
html_tabelaSingapore16 <- htmlSingapore16 %>% html_nodes(xpath="//table[1]") %>% .[[1]]
tabelaSingapore16 <- html_tabelaSingapore16%>% html_table()
tabelaSingapore16 <-tabelaSingapore16[2:7]

