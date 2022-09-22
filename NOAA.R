library(httr)
library(jsonlite)
library(magrittr)

token <- "KBtPuWpRudZmCROdzsBLMGHGZjppfeTF"

"https://www.ncei.noaa.gov/cdo-web/api/v2/datasets" %>%
  GET(config = add_headers(c("token" = token))) %>%
  `[[`("content") %>%
  rawToChar() %>% 
  fromJSON() %>%
  as.data.frame()

"https://www.ncei.noaa.gov/cdo-web/api/v2/datasets" %>%
  GET(config = add_headers(c("token" = token))) %>%
  `[[`("content") %>%
  rawToChar() %>% 
  fromJSON() %>%
  as.data.frame()
