# load required packages
library(tibble)
library(ggplot2)
library(gapminder)

# view header of the dataset
gapminder

# view help file for the dataset
?gapminder

# generate a histogram of life expectancy
ggplot(data = ________, mapping = aes(x = ________)) +
  geom________()

# generate separate histograms of life expectancy for each continent
# Hint: think about how to split your plots to show different subsets of data
ggplot(data = ________, mapping = aes(x = ________)) +
  geom________() +
  ________(facets = vars(________))

# compare the distribution of life expectancy, by continent by generating a boxplot
ggplot(data = ________, mapping = aes(x = ________, y = ________)) +
  geom________()

## redraw the plot, but this time use a violin plot
ggplot(data = ________, mapping = aes(x = ________, y = ________)) +
  geom________()

# generate a scatterplot of the relationship between per capita GDP and life expectancy
ggplot(data = ________, mapping = aes(x = ________, y = ________)) +
  geom________()

## add a smoothing line to the scatterplot
ggplot(data = ________, mapping = aes(x = ________, y = ________)) +
  geom________() +
  geom________()
