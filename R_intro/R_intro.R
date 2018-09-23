print("hey")
print("fdf")
#comment
#variables/objects
#operator <-

name <- "Chand"
name 
print(name)
price <- 3.99
price

#list of objects created on a day
ls()

#remove objects
rm(price)

#remove all objects 
rm(list=ls())


#Functions
mass <- 64 #variable mass
mass
sqrt(mass) #function with the variable as an argument
res <- sqrt(mass)
res

#getwd() function
getwd()

#using the help tab
?plot
help("mean")


#******challenge 2.1****
mass <-  47.5
age <- 122
height <- 150
  
mass <- mass * 2.3
mass
age <- age - 20
age
height <- height +20
height

#additional packages
install.packages("knitr")
#load pkg
library(knitr)


###Data types and data structures

#single element DS:smallest units in R
age <- 45

#useful functions to know more abt obj created
typeof(age)
length(age)
str(age) #num 45

score <- 79
is.integer(score)
typeof(score)

#nested function
typeof(is.integer(score))

####**** Challenge 2.2 ********########
score <- 79
#output?
is.integer(score)
typeof("FALSE")
is.numeric("character")
is.logical("FALSE")

is.logical(is.numeric(typeof(is.integer(score))))

step1 <- is.integer(score)
step1
step2 <- typeof(step1)
step2
step3 <- is.numeric(step2)
step3
step4 <- is.logical(step3)
step4

age
typeof(age)
age <- 40L #int
typeof(age)
chan <- 40.0
chan
typeof(chan)

#Data structure with multiple elements
#vector: collection of elements of same data type
#how to create a vector?
#c(): concatenate function
v <- c(1,2,3,45)
v
v <- c(1:3,45)
v
v <- c(a:z)
v <- c("n-z,b")
v

#examine the obj
length(v)
str(v)  #structure

#view parts of data/vector
head(v)
head(v,n=2)
tail(v,n=3)

#manipulate vector
v1 <- 2*v
v1

#add a vector
v2 <- c(1:5)
v2 <- v2 + v1 #when length is different, added recursively
v2
v3 <- v2
typeof(v2)

#character vector
v4 <- c("ä","ghv","hand")
typeof(v4)

#change data type
v3 <- as.character(v3)
v3
typeof(v3)
str(v3)

#MAtrices, factors, lists ***challenge
#Matrices: 2D vectors
#matric function : to create matrices
m <- matrix(c(1:18),3,6)
m
dim(m) #num of rows and cols

#factor
#special vectors used to represent categorical data
#create factor funtion to create factor
continent <- factor(c("Asia","America","Europe"))
continent #levels - alphabetical order
str(continent) # Factor w/ 3 levels "America","Asia",..: 2 1 3
typeof(continent) #???

#Lists: generic vectors - collections of elements with different data types
l <- list("Afganisthan","Albania",1952,8769859)
l
str(l)
typeof(l)

######**Challenge 2.3 ***

menuitems <- c("chicken","soup","salad","tea")
types <- factor(c("solid","liquid","solid","liquid"))
cost <- c(4.99,2.99,3.29,1.89)
myorder <- list(menuitems,types,cost)
myorder


#ele1 is a character vector of length 4

#Data frames
myorder <- list(menuitems,types,cost)
myorder_df <- data.frame(menuitems,types,cost)
myorder_df <- data.frame(myorder)
myorder_df
str(myorder_df)


##DATA Frame
menuItems <- c("chicken","soup","salad","tea")
menuType <- factor(c("solid","liquid","solid","liquid"))
menuCost <- c(4.99,2.99,3.29,1.89)
myOrder_df <- data.frame(menuItems,menuType,menuCost) 
myOrder_df

dim(myOrder_df)
str(myOrder_df)


#SUBSETTING 
#three types
#Type 1 - positional index:

v <- c(1:10)
v[2:8]
v[-c(2:8)] #except these 
v[3]

j <- c("ehgfh","fjhe")
j[2]
j[1:2]

myOrder_df[1] #first column
myOrder_df[1:2]
myOrder_df[-c(1:2)]

#subsetting get the way R sees iy
myOrder_df[[1]]
myOrder_df[[2]]
typeof(myOrder_df[[1]])
str(myOrder_df[1]) #shows as Data Frame
str(myOrder_df[[1]]) #is a factor
str(myOrder_df)

## data_frame[row,column]
myOrder_df[1:3,1]
myOrder_df[1:3,]


##Subset by name use $ symbol
myOrder_df$menuItems

##Subset by logical vectors:
###
# > greater than
# >
# ==
# >=
# >=

v <- c(5,1,3,4,5)
v[v==5]
v==5

df1 <- myOrder_df[myOrder_df$menuType=="solid",]
df1

df1 <- myOrder_df[myOrder_df$menuType=="solid",1:2]

df2 <- myOrder_df[myOrder_df$menuCost>3,]
df2

df3 <- myOrder_df[myOrder_df$menuType=="solid"]
df3
myOrder_df$menuType=="solid"
myOrder_df$menuType
# goes column wise instead of row wise

#data_frame[row,column]


#######GapMinder Dataset
myData <- read.table("Data/Data/gapminder.txt")

myDataFull <- read.table("Data/Data/gapminder.txt",header=TRUE)
dim(myData)
str(myData)
myData[[3,5]] #
typeof(myData$V2)
myData[,3,5]
myData[c(3,5)]
unique(myData$V1)
unique(myData[,1])
myData[myData$country=="Sweden",] ### comma

#subset Canada only
Canada <- myDataFull[myDataFull$country=="Canada",]
#save the graph
png("Canada.png") # Open Canada.png file

#Plot
plot(Canada$year,Canada$lifeExp,col="blue",type = "l")

#close Device
dev.off()

#for CSV files use read.csv()

####1. What is overall object structure? What function will you use?
# data frame - str
###2. Can you tell the data type of the elements in each column?
#
#  Rows are observations and colums are var
##  3. Can you extract 3rd and 5th column of the dataset?
#  4. Can you extract the list of countries in this dataset?
#  ### Hint: use unique(). ###
#  5. Can you get a part of this dataset that includes information about Sweden?
#  6. Can you extract all countries for which life expectancy is below 70?

#  7. Can you make a new column that contains population in units of millions of people?

#3
myData[,c(3,5)]
#4
unique(myData$V1)
#5
myData[myData$lifeExp<70,]
#6
myData$PopM < myData$pop/(10^6)

#view 
View(myData)
source()