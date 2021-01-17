#Chapter 6 Intro dplyr

library(tidyverse)
library(gapminder)
gapminder
class(gapminder)

#turn regular datafrome into tibble
as_tibble(iris)

#use "filter()" to subset data row-wise
filter(gapminder, lifeExp < 29)

filter(gapminder, country == "Rwanda", year > 1979)

filter(gapminder, country %in% c("Rwanda", "Afghanistan"))

filter(gapminder, country == "Canada")

# Pipe %>%  == Cmd + Shift + M
gapminder %>% head()

#This is equivalent to head(gapminder). 
#The pipe operator takes the thing on the left-hand-side and pipes it into the function call on the right-hand-side – literally, drops it in as the first argument.

gapminder %>% head()
gapminder %>% head(3)

#think “gets” whenever you see the assignment operator, <-. 
#Similarly, think “then” whenever you see the pipe operator, %>%.

#Use select() to subset the data on variables or columns.

select(gapminder, year, lifeExp)

gapminder %>%
  select(year, lifeExp) %>%
  head(4)

gapminder %>%
  filter(country == "Cambodia") %>%
  select(year, lifeExp)
