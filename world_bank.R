library(httr)
library(jsonlite)
library(magrittr)

# Topics ------------------------------------------------------------------

wb_topics <- function(topic = "") {
  base <- "http://api.worldbank.org/v2/topic"
  url <- paste(base, topic, sep = "/")
  
  res <- GET(url, query = list(format = "json"))
  
  data = fromJSON(rawToChar(res$content))
  
  data |> as.data.frame()
}

wb_indicators <- function(topic = 5) {
  url <- "http://api.worldbank.org/v2/indicator"
  
  res <- GET(url, query = list(topic = topic, format = "json"))
  
  data = fromJSON(rawToChar(res$content))
  
  data |> as.data.frame()
}

"http://api.worldbank.org/v2/topic/19/indicator?format=json" |>
  GET() %>%
  `[[`("content") |>
  rawToChar() |>
  fromJSON() |>
  as.data.frame() |> View()

"http://api.worldbank.org/v2/topic/19/indicator?format=json&page=1" |>
  GET() %>%
  `[[`("content") |>
  rawToChar() |>
  fromJSON() |>
  as.data.frame() %>% View()
  


