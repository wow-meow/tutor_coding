# Import the course packages  
import matplotlib.pyplot as plt

#import numpy as np
import pandas as pd

# Import the two datasets
#gapminder = pd.read_csv("datasets/gapminder.csv")
#brics = pd.read_csv("datasets/brics.csv")

# Definition of countries and capital
countries = ['spain', 'france', 'germany', 'norway']
capitals = ['madrid', 'paris', 'berlin', 'oslo']

europe = dict()
#europe.update((country, capital) for country, capital in zip(countries, capitals))
europe.update(zip(countries, capitals))
print(europe)
europe['italy'] = 'rome'
print(europe)
print(f"italy is in europe: {'italy' in europe}")
del europe['italy']
print(f"italy is in europe: {'italy' in europe}")
europe['italy'] = ''
print(f"italy is in europe: {'italy' in europe}")

# Dictionary of dictionaries
europe = { 'spain': { 'capital':'madrid', 'population':46.77 },
           'france': { 'capital':'paris', 'population':66.03 },
           'germany': { 'capital':'berlin', 'population':80.62 },
           'norway': { 'capital':'oslo', 'population':5.084 } }

# Print out the capital of France
print(europe['france']['capital'])
# Create sub-dictionary data: named data, with the keys 'capital' and 'population'. 
# Set them to 'rome' and 59.83, respectively.
data = {'capital':'rome', 'population': 59.83}
# Add data to europe under key 'italy'
europe['italy'] = data

# extract europe.values() and store it in a variable cap_pop_dict
cap_pop_dict = {v['capital']:v['population'] for v in europe.values()}

df_column_dict = {
    'country': ['Brazil', 'Russia', 'India', 'China', 'South Africa'], 
    'capital': ['Brasilia', 'Moscow', 'New Delhi', 'Beijing', 'Pretoria'],
    'area': [8.512, 17.125, 3.288, 9.596, 1.221],
    'population': [206.1, 145.9, 1339.2, 1404.9, 58.2] }

brics = pd.DataFrame(df_column_dict)
brics.index = ['BR', 'RU', 'IN', 'CH', 'SA']
print(brics)

# Pre-defined lists
names = ['United States', 'Australia', 'Japan', 'India', 'Russia', 'Morocco', 'Egypt']
dr =  [True, False, False, False, True, True, True]
cpc = [809, 731, 588, 18, 200, 70, 45]
# Create dictionary my_dict with three key:value pairs: my_dict
df_column_dict = {'countries':names, 'drives_right':dr, 'cars_per_cap':cpc}
# Build a DataFrame cars from my_dict: cars
cars = pd.DataFrame(df_column_dict)
row_labels = ['US', 'AUS', 'JPN', 'IN', 'RU', 'MOR', 'EG']
cars.index = row_labels
print(cars)
