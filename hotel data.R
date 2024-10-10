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


#---------------------------------------------------

library(tidyverse)
library(ggplot2)
data <- read_csv("hotel_data.csv")
ggplot(data=data) + geom_bar(mapping=aes(x=distribution_channel))
ggplot(data=data) + geom_bar(mapping=aes(x=distribution_channel,fill=market_segment)) 
ggplot(data=data) + geom_bar(mapping=aes(x=distribution_channel)) + 
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle=90))
ggplot(data=data) + geom_bar(mapping=aes(x=distribution_channel)) + 
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle=90))
ggplot(data=data) + geom_bar(mapping=aes(x=hotel,fill=market_segment)) +
  facet_wrap(~market_segment)


cityhotels <- filter(data, 
                               (hotel=="City Hotel" & 
                                  data$market_segment=="Online TA"))


ggplot(data = cityhotels) +
  geom_point(mapping = aes(x = lead_time, y = children))


View(cityhotels)






























