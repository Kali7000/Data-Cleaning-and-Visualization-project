Vishal Wagh Project 1 Report 

About the Dataset 
Link: https://www.kaggle.com/datasets/taeefnajib/used-car-price-prediction
dataset?resource=download 
Used Car Price Prediction Dataset is a comprehensive collection of automotive information 
extracted from the popular automotive marketplace website, https://www.cars.com. This 
dataset comprises 4,009 data points, each representing a unique vehicle listing, and includes 
nine distinct features providing valuable insights into the world of automobiles. 
 Brand & Model: Identify the brand or company name along with the specific model 
of each vehicle. 
 Model Year: Discover the manufacturing year of the vehicles, crucial for assessing 
depreciation and technology advancements. 
 Mileage: Obtain the mileage of each vehicle, a key indicator of wear and tear and 
potential maintenance requirements. 
 Fuel Type: Learn about the type of fuel the vehicles run on, whether it's gasoline, 
diesel, electric, or hybrid. 
 Engine Type: Understand the engine specifications, shedding light on performance 
and efficiency. 
 Transmission: Determine the transmission type, whether automatic, manual, or 
another variant. 
 Exterior & Interior Colors: Explore the aesthetic aspects of the vehicles, including 
exterior and interior color options. 
 Accident History: Discover whether a vehicle has a prior history of accidents or 
damage, crucial for informed decision-making. 
 Clean Title: Evaluate the availability of a clean title, which can impact the vehicle's 
resale value and legal status. 
 Price: Access the listed prices for each vehicle, aiding in price comparison and 
budgeting. 
Description of the code: 
1. Data Cleaning 
I cleaned the dataset by converting the `mileage` and `price` columns to numeric format by 
removing non-numeric characters. then replaced any missing values in the numeric columns 
with the mean of that respective column. 
2. Statistical Calculations 
I calculated the max and min prices, mean mileage, and the standard deviation of the total 
price.  
3. Filtering and Subset Data 
I filtered the dataset to focus on cars priced over $20,000 for targeted analysis. Then, I 
created a subset that included only the brand, model year, and price columns. 
4. Data Visualization 
To visualize the data, I created scatter plots between mileage and price, and an histograms of 
car prices. 
5. Removed Duplicate and Saveing 
I removed duplicate entries and saved the cleaned dataset. 
6. Correlation Analysis 
Lastly, I used a correlation matrix to see the relationships between numeric variables, and 
then visualized it using a correlation plot. 
