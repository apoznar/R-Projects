#loading library
library("tidyverse")

#ggplot(data = <DATA>) + 
#<GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

#aesthetics data(color/size/alpha/shape = class)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv, color = class))
#facet(subplots) with variable name and number of rows
#to use two variables, 'facet_grid(drv ~ cyl)'; you can use . as a variable
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

#smooth plots, linetype adds third variable, also group/color
#you can add ', show_legend = FALSE'
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

#displaying multiple geoms on one graph
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

#bar plot, also 'stat_count' as an argument
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

#display bar chart of propotion
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, y = ..prop.., group = 1)
  )

#statistics summary, summarizes y for each unique x value
ggplot(data = diamonds) +
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

#coloring bar graphs
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))
#stacking bars with colors by adding third variable as fill
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))

#'fill' makes each set bars same height, good for compare proportions
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "fill"
  )

#'dodge' makes overlapping data beside one another
ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, fill = clarity),
    position = "dodge"
  )

#'jitter' makes random noise in each point with multiple values
ggplot(data = mpg) +
  geom_point(
    mapping = aes(x = displ, y = hwy),
    position = "jitter"
  )

#'coord_flip' switches axes (useful fo horizontal boxplots)
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  geom_boxplot()
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  geom_boxplot() +
  coord_flip()
#'coord_quickmap()' sets correct aspect ratio for maps
#'coord_polar()' uses polar coordinates

#ggplot(data = <DATA>) +
#<GEOM_FUNCTION>(
#  mapping = aes(<MAPPINGS>),
#  stat = <STAT>,
#  position = <POSITION>
#) +
#  <COORDINATE_FUNCTION> +
#  <FACET_FUNCTION>