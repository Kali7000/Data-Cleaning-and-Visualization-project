##Vishal Wagh


# load necessary libraries
library(ggplot2)
library(dplyr)  
library(tidyr)
library(reshape2)
library(corrplot)
library(stringr)

#load the dataset from CSV
cars <- read.csv("used_cars.csv")

## 1 Clean the Data

#Convert 'milage' and 'price' to numeric values to remove commas, dollar signs, and 'mi.'
cars$milage <- as.numeric(gsub("[^0-9]", "", cars$milage))  #to remove non-numeric characters
cars$price <- as.numeric(gsub("[^0-9]", "", cars$price))

#Checking the structure of the dataset after conversion
str(cars)

# Check for missing values
missingValues <- colSums(is.na(cars))
print(missingValues)


# 2 Replace missing values with the mean value of that coloumn
cleanedCars <- cars
for (col in names(cleanedCars)) {
  if (is.numeric(cleanedCars[[col]])) {  #if the column is numeric and  replace NA values with the mean
    cleanedCars[[col]][is.na(cleanedCars[[col]])] <- mean(cleanedCars[[col]], na.rm = TRUE)
  }
}



## 3 maximum price
maxPrice <- max(cleanedCars$price, na.rm = TRUE)
print(paste("Maximum price:", maxPrice))


## 4 minimum price
minPrice <- min(cleanedCars$price, na.rm = TRUE)
print(paste("Minimum price:", minPrice))


## 5 mean mileage
meanMileage <- mean(cleanedCars$milage, na.rm = TRUE)
print(paste("Mean mileage:", meanMileage))


## 6 Calculating the standard deviation of price
standardDev <- sd(cleanedCars$price, na.rm = TRUE)
print(paste("Standard deviation of price:", standardDev))


## 7 Filter rows with price greater than $20,000
expensiveCars <- cleanedCars %>% filter(price > 20000)


## 8 Create a subset using brand, model year, and price columns
subsetCars <- cleanedCars %>% select(brand, model_year, price)



## 9 Plots:

# scatter plot of mileage vs price
ggplot(cleanedCars, aes(x = milage, y = price)) + geom_point() + labs(title = "Scatter Plot of Mileage vs Price", x = "Mileage", y = "Price")


# histogram of car prices
ggplot(cleanedCars, aes(x = price)) + geom_histogram(binwidth = 1000, fill = "blue", color = "black") +
  labs(title = "Histogram of Car Prices", x = "Price", y = "Frequency")



## 10 remove duplicate rows of cleaned data
duplicates <- cleanedCars %>% duplicated()
numDupli <- sum(duplicates)
print(paste("Number of duplicate rows:", numDupli))
newestCars <- cleanedCars %>% distinct()

## 11 Save the cleaned data to a new CSV file
write.csv(cleanedCars, "cleaned_used_car_data.csv", row.names = FALSE)



## 12 Visulize the data again

# boxplot for price by transmission
ggplot(newestCars, aes(x = transmission, y = price)) + geom_boxplot(fill = "green") +
  labs(title = "Price by Transmission", x = "Transmission", y = "Price")


# plotting the correlation matrix
numCols <- newestCars %>% select_if(is.numeric)
corrMatrix <- cor(numCols, use = "complete.obs")
print(corrMatrix)

corrplot(corrMatrix, method = "circle", type = "upper")


