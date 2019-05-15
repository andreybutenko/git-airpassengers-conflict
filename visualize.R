library(ggplot2)
library(dplyr)

# Let's make a data visualization about monthly air travelers!

# The dataset is built into R, but it is impossible to use without some data wrangling:
data <- data.frame(
  year = rep(1949:1960, each = 12),
  month = month.abb,
  passengers = AirPassengers # in thousands
)

# Summarize data by year:
data %>% 
  group_by(year) %>% 
  summarize(passengers = mean(passengers)) %>% 

# Finally, plot the data!
  ggplot(aes(x = year, y = passengers)) +
  labs(
    title = 'Passengers over time',
    x = 'Year',
    y = 'Passengers (thousands)'
  ) +
  geom_line(size = 2, color = 'blue')
