## code to prepare `DATASET` dataset goes here
library(tidyverse)

tmp_file <- tempfile()
url <- "https://www.roger-beecham.com/datasets/ny_stations.csv"
curl::curl_download(url, tmp_file, mode="wb")
ny_stations <- read_csv(tmp_file)

usethis::use_data(ny_stations, overwrite = TRUE)
