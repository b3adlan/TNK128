#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 23 12:34:38 2026

@author: bashir
"""
# 6.1 ex 4.1
import numpy as np

# raws = days
# colums = cities
# city A, city B, city C
temperatures = np.array([
    [22, 24, 20],
    [25, 27, 23],
    [20, 22, 21],
    [23, 26, 22],
    [24, 28, 24],
    [26, 29, 25],
    [21, 23, 20]
])
# avg_of_temp= np.mean(temperatures) #gives the avg of 21 numbers
avg_of_temp= np.mean(temperatures, axis = 0) #axis = 0 collaps rows
print(avg_of_temp)

# max temp of the matrix
max_overall_temp= np.max(temperatures)
print(max_overall_temp)

fixing_days1_2 = temperatures.copy()
fixing_days1_2[1:4, [0, 2]] += 2
print(fixing_days1_2)

#%% 6.2 ex 4.2
import pandas as pd
import os
import matplotlib.pyplot as plt

mapp = '/home/bashir/Downloads/Python/Lab4_HT26/Railway_data'
trains = 'trains.csv'
locations = 'locations.csv'

locations = os.path.join(mapp, locations)
trains = os.path.join(mapp, trains)
#creating the dataframes

trains_df = pd.read_csv(trains)
locations_df = pd.read_csv(locations)

#print(trains_df)
#print(locations_df)
# keeping only departing trains:
    # row is a departure if it has a planned departure time:
        #rows with empty planneddeparture are arrivals only

# notna() gives value in a column if ther is something there:
    #empty value = NaN, bascially true or false kolumn:
        #when using brackets gives only true (have values)
departures = trains_df[trains_df['PlannedDeparture'].notna()]

# first half of the 2025 means that from januari 2025

departures = departures[departures['PlannedDeparture'] >= '2025-01-01']

#conting trains per destination::
    #ToLocationSignature = train is going to this station
        #:
            
counts = departures['ToLocationSignature'].value_counts()
counts_df = counts.reset_index()
counts_df.columns = ['LocationSignature', 'NumberOfTrains']

#replacing the full station name :
  #merge() = joins tabels where LocationSignature is the same:
    #merge will include:
        #LocationSignature, NumberOfTrains, AdvertisedLocationName:
                
merged = counts_df.merge(locations_df, on = 'LocationSignature', how='left')

print(merged[['AdvertisedLocationName', 'NumberOfTrains']])

plt.figure(figsize=(12,6))
plt.bar(merged['AdvertisedLocationName'], merged['NumberOfTrains'])
plt.xlabel('Destination station')
plt.ylabel('Number of departing trains')
plt.title('Departing trains from Norrköping')
plt.xticks(rotation=90)
plt.tight_layout()
plt.show()


