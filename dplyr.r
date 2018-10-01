#using dplyr library
library(nycflights13)
library(tidyverse)
flights

#picking observations by values
filter(flights, month == 1, day == 1)
#filtering all 11 and 12 in month
nov_dec <- filter(flights, month %in% c(11, 12))
#checking if value is missing
is.na(x)

#reordering the rows
arrange(flights, year, month, day)
#reorder column in descending order
arrange(flights, desc(arr_delay))
#sort missing values
df <- tibble(x = c(5, 2, NA))
arrange(df, x)

#picking variables with their names
select(flights, year, month, day)
# pick all except those between year and day inclusive
select(flights, -(year:day))
#useful helper functions inside select()
#starts_with("abc") matches names that begin with “abc”.
#ends_with("xyz") matches names that end with “xyz”.
#contains("ijk") matches names that contain “ijk”.
#matches("(.)\\1") selects variables that match a regular expression.
#num_range("x", 1:3) matches x1, x2, and x3.

#creating new variables with functions of existing variables
flights_sml <- select(flights,
                      year:day,
                      ends_with("delay"),
                      distance,
                      air_time
)
mutate(flights_sml,
       gain = arr_delay - dep_delay,
       speed = distance / air_time * 60
#keeping new variables
transmute(flights,
          gain = arr_delay - dep_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
)
#useful operators: %/%, %%, log()

#collapsing many values down to a single summary
summarize(flights, delay = mean(dep_delay, na.rm = TRUE))