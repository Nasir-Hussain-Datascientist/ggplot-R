library(tidyverse)

penguins %>% arrange(-bill_length_mm)
penguins2 <- penguins %>%  arrange(-bill_length_mm)




penguins %>%
  group_by(island,species) %>% 
  drop_na() %>% 
  summarize(max_bill_length_mm=max(bill_length_mm),mean_bill_length_mm=mean(bill_length_mm))
  

penguins %>%  filter(species == "Adelie")
