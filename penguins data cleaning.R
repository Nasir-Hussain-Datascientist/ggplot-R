library(tidyverse)

library(ggplot2)

library(palmerpenguins)


View(penguins)
ggplot(penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))
ggplot(penguins,aes(x=bill_length_mm,y=bill_depth_mm)) + geom_point()

?geom
