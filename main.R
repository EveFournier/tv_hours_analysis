library(here)
library(tidyverse)

# See the file
gss_cat

# Produce table of hours of tv per marital status

tv_hours_tabulation_verylong_should_warn_me<-gss_cat %>% 
  dplyr::filter(age>=50) %>% # Message of a potential tidyverse_conflicts 
  group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours, na.rm=T))

# Exports table to csv file
write_csv(tv_hours_tabulation_verylong_should_warn_me,here("tv_hours_table.csv"))
