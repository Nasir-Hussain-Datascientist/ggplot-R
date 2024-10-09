library(tidyverse)
library(skimr)
library(janitor)
df<- read_csv("hotel_data.csv")

head(df)

str(df)
colnames(df)

df2 <- df %>% 
  select(hotel,is_canceled,lead_time) %>% 
  rename(hotel_type = hotel)

df3 <- df %>% 
  select(arrival_date_year,arrival_date_month) %>% 
  unite(arrival_month_year,c("arrival_date_month","arrival_date_year"),sep=" ")

df6 <- df %>% 
  mutate((guests = adults + children + babies))
#-----------------------------------------------------------------------------



library(tidyverse)
library(janitor)
library(skimr)


data <- read_csv("hotel_data.csv")

glimpse(data)
data %>% 
  arrange(lead_time)
arrange(data,-lead_time)
mean(data$lead_time)
city_hotels <- filter(data,data$hotel=="City Hotel")
city_hotels


#_------------------------------------------------------------------

library(tidyr)
library(ggplot2)

data <- read_csv("hotel_data.csv")


p<-ggplot(data = data)+geom_point(mapping=aes(x=lead_time,y=children))
ggsave("plot.png",plot=p,width=6,height=4)

p2<- ggplot(data=data)+geom_point(mapping = aes(x=stays_in_weekend_nights,y=children))
ggsave("plot2.png",plot=p2,width=6,height=4)
