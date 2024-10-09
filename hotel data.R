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
