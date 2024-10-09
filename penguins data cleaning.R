library(tidyverse)

library(ggplot2)

library(palmerpenguins)


View(penguins)
ggplot(penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))
ggplot(penguins,aes(x=bill_length_mm,y=bill_depth_mm)) + geom_point()

#-------------------------------------------------------------------

library(tidyverse)
library(ggplot2)
library(palmerpenguins)
ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species,),color="purple") 
ggplot(data=penguins) +
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species),color="purple",)
