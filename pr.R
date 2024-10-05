library(tidyverse)
data("diamonds")
install.packages
install.packages("janitor")

library(here)
library(dplyr)
library(janitor)
library(skimr)
library("palmerpenguins")
plamerpenguins
head(palmerpenguins)
skim_without_charts(penguins)
glimpse(penguins)





penguins %>% 
  select(species)

penguins %>% 
  rename(island_new=island)

rename_with(penguins,tolower)

clean_names(penguins)






