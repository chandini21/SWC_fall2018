#1st script

# location of the data
filename <- 'Data/Data/gapminder.txt'

# read the data
gapminder <- read.table(filename, header = TRUE)
#View(gapminder)
#gapminder <- read.table(file = filename, header = TRUE)

#select the rows for the country Albania is ans store it
albaniaData <- gapminder[gapminder$country=="Albania",]
#View(albaniaData)

# select column for GDP from albaniaData
albaniaGDP <- albaniaData$gdpPercap
#View(albaniaGDP)

# compute the average  GDP for the country over the years
albaniaAverageGDP <- mean(albaniaGDP)
print(albaniaAverageGDP)
#View(albaniaAverageGDP)
paste("The average GDP for Albania is:", albaniaAverageGDP)


#rm(list = ls())

