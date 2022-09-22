library(httr)
library(jsonlite)

toke <- ""

search_url <- "https://api.spotify.com/v1/search"
arguments <- list(
  q = "drake",
  type = "artist"
)

drake <- GET(
  search_url, 
  config = add_headers(Authorization = paste("Bearer", toke, sep = " ")), 
  query = arguments
  )

fromJSON(rawToChar(drake$content))
