# load required packages
library(tidyverse)
library(gapminder)

# view header of the dataset
gapminder

# view help file for the dataset
?gapminder

# generate a histogram of life expectancy
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram()

# generate separate histograms of life expectancy for each continent
# Hint: think about how to split your plots to show different subsets of data
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram() +
  facet_wrap(facets = vars(continent))

# compare the distribution of life expectancy, by continent by generating a boxplot
ggplot(data = gapminder, mapping = aes(x = continent, y = lifeExp)) +
  geom_boxplot()

## redraw the plot, but this time use a violin plot
ggplot(data = gapminder, mapping = aes(x = continent, y = lifeExp)) +
  geom_violin()

# generate a scatterplot of the relationship between per capita GDP and life expectancy
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()

## add a smoothing line to the scatterplot
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth()
