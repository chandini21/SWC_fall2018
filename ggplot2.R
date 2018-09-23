#set working directory
#setwd("/C:/Users/Chandini Akula/Desktop/SWC_fall2018")

#rm(list = ls())
setwd("C:/Users/Chandini Akula/Desktop/SWC_fall2018")

# install ggplot2
install.packages("ggplot2")

# load dependencies
library(ggplot2)


# read all the input data
gapdata <- read.table(file = 'Data/Data/gapminder.txt', header = TRUE) # header = T

# make first ggplot2
ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) # small x and y ---- just outline

ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) + geom_point() # dots

ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) + geom_line() 

# ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) + geom_point() + geom_bar()# blank

# ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp)) + geom_pointrange()# blank


# challenge 1
ggplot(data = gapdata, aes(x = year, y = lifeExp)) + geom_point() # dots

### trial2
# try for each country

# change color
ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point() # color according to continent

ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp, color=lifeExp)) + geom_point() # color according to lifeExp

ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp, by = country, color=continent)) + geom_line() # color 

ggplot(data = gapdata, aes(x = year, y = lifeExp, by = country, color=continent)) + geom_point() # color 

ggplot(data = gapdata, aes(x = year, y = lifeExp, by = country, color=continent)) + geom_line() # color 

ggplot(data = gapdata, aes(x = year, y = lifeExp, color=continent)) + geom_point() # color 
ggplot(data = gapdata, aes(x = year, y = lifeExp, color=country)) + geom_line() # color 

# change color and specify lines
ggplot(data = gapdata, aes(x = year, y = lifeExp, by = country, color=continent)) + geom_line() + geom_point()# color 

# to overlay on top give at end???
ggplot(data = gapdata, aes(x = year, y = lifeExp, by = country, color=continent)) + geom_line(aes(color = continent)) + geom_point()# color 

# statistics
ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(alpha = 0.5) + scale_x_log10()# color according to lifeExp


ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(alpha = 0.5) + scale_x_log10()+# color according to lifeExp
   geom_smooth(method = "lm", size = 1.5)

# challenge 2 -- modify color and size of all the points
ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(shape = "square", alpha = 0.1, size= 6) + scale_x_log10() #+# color according to lifeExp
  # geom_smooth(method = "lm", size = 1.5)
ggplot(data = gapdata, aes(x = gdpPercap, y = lifeExp, color=continent)) + geom_point(shape = 17, alpha = 0.8, size= 6) + scale_x_log10() #+# color according to lifeExp

# 
start.with <- substr(x = gapdata$country, start = 1, stop = 1)
az.countries <- gapdata[start.with %in% c("A","Z"),]

ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) + geom_line() +facet_wrap(~ country)
