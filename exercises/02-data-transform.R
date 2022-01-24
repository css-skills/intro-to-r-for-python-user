# load required packages
library(tidyverse)
library(rcfss)

# view header of the dataset
scorecard
glimpse(scorecard)

# view help file for the dataset
?scorecard

# generate a data frame of schools with a greater than
# 40% share of first-generation students
filter(.data = ________, ________)

# generate a data frame with the average SAT score for each type of college
scorecard %>%
  group_by(________) %>%
  ________(mean_sat = ________)

# calculate for each school how many students it takes to pay
# the average faculty member's salary and generate a data frame
# with the school's name and the calculated value
# - use net cost of attendance
scorecard %>%
  ________(________ = ________) %>%
  ________(________, ________)

# calculate how many private, nonprofit schools have a smaller net cost
# than the University of Chicago
## Hint: the result should be a data frame with one row for the University of Chicago,
## and a column containing the requested value.

## report the number as the total number of schools
scorecard %>%
  ________ %>% ...

## Report the number as the percentage of schools
scorecard %>%
  ________ %>% ...
