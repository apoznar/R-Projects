library(tidyverse)
#coerce data frame to a tibble
as_tibble(iris)

#example of tibble
tibble(
x = 1:5,
y = 1,
z = x ^ 2 + y
)

#tribble (transposed tibble)
tribble(
~x, ~y, ~z,
#--|--|----
"a", 2, 3.6,
"b", 1, 8.5
)

#readr functions
read_csv() #comma-delimited files
read_csv2() #semicolon separated files
read_tsv() #tab delimited files
read_delim() #reads in files with any delimiter
read_fwf() #read fixed-width files
read_table() #read common tables
read_log() #read Apache style log files

#parsing vectors (also double/character/factor/datetime)
str(parse_logical(c("TRUE", "FALSE", "NA")))

#writing files
write_csv(challenge, "challenge.csv")

#gathering data
table4a %>%
gather(`1999`, `2000`, key = "year", value = "cases")

#spreading data
spread(table2, key = type, value = count)

#separating data
table3 %>%
separate(rate, into = c("cases", "population"))

#uniting data
table5 %>%
unite(new, century, year)