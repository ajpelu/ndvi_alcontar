library(tidyverse)
library(here)

# Combine all GPS data
f <- list.files(path = here::here("data/gps_data"),
           pattern = "*.csv", full.names = TRUE)

gps <- f %>% map(., ~read_delim(., delim = ";")) %>% reduce(rbind)
write_csv(gps, here::here("data/gps_data/all_gps.csv"))


