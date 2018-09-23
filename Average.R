# second script
# This script computes the average GDP for a country using gapminder

# clear old variables
rm(list = ls())

# location of data
filename <- 'Data/Data/gapminder.txt'

# read the data file 
gapminder <- read.table(filename, header = TRUE)

getAverageGdpPerCapita <- function(country, gapminder){
  # select country where you want to parse out GDP
  # selectedCountryData <- gapminder[gapminder$country == country,]
  selectedCountryData <- gapminder[gapminder$country == country,"gdpPercap"]
  mean(selectedCountryData)
  # mean(selectedCountryData$gdpPercap)
}

gdpUSA <- getAverageGdpPerCapita("United_States", gapminder)
gdpCanada <- getAverageGdpPerCapita("Canada", gapminder)
gdpMexico <- getAverageGdpPerCapita("Mexico", gapminder)

print(paste('GDP per cap of USA is',gdpUSA))
print(paste('GDP per cap of Canada is',gdpCanada))
print(paste('GDP per cap of Mexico is',gdpMexico
            
### trial            
gdpUSA <- getAverageGdpPerCapita("United_States",gapminder)
selectedCountryData <- gapminder[gapminder$country == country,"gdpPercap"]

paste("Average GDP of", selectedCountryData, "is: ",gdpUSA)
