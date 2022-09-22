
# Pacakges ----------------------------------------------------------------
library(googleway)

# Keys --------------------------------------------------------------------
key <- Sys.getenv("api_key")

# Testing googleway -------------------------------------------------------

origin <- tibble::tibble(
  lat = c(18.494998),
  lon = c(-69.902328)
)

destination <- tibble::tibble(
  lat = c(18.493709),
  lon = c(-69.889665)
)

google_distance(
  origins = origin,
  destinations = destination,
  mode = "driving",
  key = key
)
