# Simple script analysing the Australian weather data

library("tidyverse")

# Read in the data

df = read_csv("data/weatherAUS.csv")

# Create a scatter plot of Humidity9am and Temp9am
# a location

city = "Brisbane"

time_series =
  df %>%
  filter(Location == city) %>%
  ggplot(aes(x = Date, y = Temp9am)) +
  geom_line()
ggsave(filename = "graphics/timeseries-rainfall.png",
       plot = scatter_plot)

scatter_plot = 
df %>%
  filter(Location == city) %>%
  ggplot(aes(x = Temp9am, y = Humidity9am)) + 
  geom_point(aes(color="green")) +
  guides(color= "none") +
  theme_minimal()

# Save the plot in graphics/
ggsave(filename = "graphics/scatter-temp-humidity.png", plot = scatter_plot)
