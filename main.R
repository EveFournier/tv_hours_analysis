library(here)
library(tidyverse)

# See the file
gss_cat

# Produce table of hours of tv per marital status

tv_hours_table<-gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours, na.rm=T))

# Exports table to csv file
write_csv(tv_hours_table,here("tv_hours_table.csv"))
