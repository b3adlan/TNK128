% Homework 5
%% ex5.1
waitingPassengers= input('How many passengers are waiting?\n');
delayMin = input('How much delay in minutes?\n');
brokenBus = input('Is the scheduled bus broken? (1=yes, 0=no)\n');

% when there are more than 5o passengers, and one of:
                %only one of (delayed buss or broken bus) 
                % then send the buss 
%if first condition is false all statemnt is false             
if waitingPassengers >50 && (delayMin>10 || brokenBus ==1) 
    disp('A new bus will be sent right now!')
else
    disp('Please wait for the next departure')
end
%% ex5.2
localDelivery = 60; regionalDelivery = 90;
expressService = 40; xtraWeight10kg = 25;

deliveryType = input('Enter delivery option (1=local, 2=regional): ');
askExpress = input('Do you want to add express service? (1 =yes, 0=no): ');
weightKg = input('Enter parcel weight in kg: ');
%%%%
if (deliveryType ~= 1 && deliveryType ~= 2) || (askExpress ~= 1 && askExpress ~= 0) || (weightKg <= 0)
    disp('Invalid input!!');
else
    if deliveryType == 1 
        totalCost = localDelivery;
    else
        totalCost = regionalDelivery;
    end

    if askExpress == 1
        totalCost = totalCost + expressService;
    end

    if weightKg > 10
        totalCost = totalCost + xtraWeight10kg;
    end

    fprintf('Total price will be %d kr\n', totalCost);
end
%% ex5.3
%1
passengers = [420,465,450,480,570,310,280];
days = {'Mon','Tue','Wed','Thu','Fri','Sat','Sun'};
meanPassengers = mean(passengers);
sumPassengers = sum(passengers);
fprintf('Average passengers per day: %.1f\n', meanPassengers);
fprintf('Total passengers for all week: %d\n', sumPassengers);
%2
% %s to put the string 
% lower gives small letter 

for i = 1:7
 if passengers(i) < meanPassengers
     fprintf('On %s there were %d passagerare, less than avgrage < %.1f \n', lower(days{i}), passengers(i), meanPassengers);
 elseif passengers(i) > meanPassengers
     fprintf('On %s there were %d passengers, greater than average > %.1f\n', lower(days{i}), passengers(i), meanPassengers);
 else
     fprintf('On %s there were %d passengers, equal to average %.1f\n', lower(days{i}), passengers(i), meanPassengers);
 end
end
%3
meanWeekDayPassengers = mean(passengers(1:5)); %mon - fri
meanWeekendPassengers = mean(passengers(6:7)); %sat - sun
if meanWeekendPassengers < meanWeekDayPassengers
    fprintf('Average weekday passengers is highest: %.1f\n', meanWeekDayPassengers);
elseif meanWeekDayPassengers > meanWeekDayPassengers
    fprintf('Average weekend passengers is highest: %.1f\n', meanWeekendPassengers);
else
    fprint('Average weekday passengers = Average weekend passengers')
end
# -*- coding: utf-8 -*-
"""

#%%
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 26 16:41:46 2026

@author: basad559
"""
#%%Problem1
import math
while True:
    try:
        print('Enter 3 numbes: ')
        x1 = int(input('X1: '))
        x2 = int(input('X2: '))
        x3 = int(input('X3: '))
        multpX = (x1*x2*x3)
        meanXi = math.pow(multpX, (1/3)) #3sqrt root 
        
        print(f'The Geomeric mean is: {meanXi}')
        break
    
    except ValueError:
        print('Not a number!')
#%%Problem2
temps = [18, 21, 19, 23, 20, 17, 22, 16]

counterTemps =0
for t in temps:
    if t >=20:
        counterTemps +=1
print(counterTemps)
tempRev = []

for i in temps[::-1]:
    tempRev.append(i)
print(tempRev)
#c
def tempRevers(lista):
    return lista[::-1]
lisan = [1, 2, 3, 4, 5]
print(tempRevers(lisan))
#%%Problem3
last_location = {"Truck 1": 1, "Truck 2": 43, "Truck 3": 32}
    
userTrucks = input('Enter truck name: ')

if userTrucks in last_location:
    wishedTruck = last_location[userTrucks]
    print(wishedTruck)
else:
    newLocation = input('Enter new location: ')
    last_location[userTrucks] = newLocation
#%%Problem4
import numpy as np
A = np.array([[15, 18, 20], [17, 16, 19], [14, 20, 18], [5, 17, 16]])

#a
totScore = np.sum(A, axis =1)
print(totScore)
#b
def check_passed(s):
    if totScore[s] >=50:
        return True
    else:
        return False
print(check_passed(3))

#c
## faster with numerc data
## hela arry not loops
#%%Problem5
import pandas as pd
materials = pd.DataFrame({
    'Material': ['Brick', 'Cement', 'Sand'],    
    'Price': [2.5, 50.0, 1.0],
    'Stock': [1000, 100, 5000]
})
#a
totalValue = materials['Price'] * materials['Stock']
totStock = sum(totalValue)
print(totStock)

#b
def restock(materials, threshold):
    filtrerad = materials[materials['Stock'] < threshold]
    namnem = filtrerad['Material' ].tolist()
    
    return namnem

print(restock(materials,650))

def restock_cost(materials, threshold):
    restock_amount = (threshold - materials['Stock']).clip(lower=0)
    return (restock_amount * materials['Price']).sum()

restock_cost(materials, 2000)

#%%
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 26 12:35:10 2026
@author: basad559
"""
#%%Problem 1
cost = 59 #kr
userDucks = float(input('Enter ducks amount: '))

totPrice = cost * userDucks
print(f'Total price will be {totPrice} SEK')

discountCode = 'TNK128'
if userDucks>=10:
    askDiscount = input('Enter discount code ')
    if askDiscount.upper() == discountCode:
        print('You get 10% discount!')
        discount = 0.10 * totPrice
        newTotPrice = totPrice-discount
        print(f'Final price is {newTotPrice} SEK')
    else:
        print('Discount is {0}')

#%%Problem 2
km_laid = [26, 30, 22, 23, 23]

#a avarge

totKm = sum(km_laid)
totDays = len(km_laid)
avgKm=totKm/totDays
print(f'Avg per day is {avgKm} km')

#b 
days = 0
for i in range(len(km_laid)):        
      days +=  km_laid[i]
      
      if days >=100:
         dindex = i + 1 
         break
     
print(days, dindex)

#c
## it is a semantoc error bcs the code runs 
## and give un expected result
#%%Problem 3
projects = [
    {"name": "New Norrköping station", "actual": 131346, "budget": 120000},
    {"name": "New line Norrköping-Finspång", "actual": 145348, "budget": 100000},
    {"name": "Upgrade Linköping-Mjölby", "actual": 120013, "budget": 150000}
]

#a
exceeds = 0
for project in projects:
    actual = project['actual']
    budget = project['budget']
    if actual > budget:
        exceeds +=1

print(f'There are {exceeds} projects that exceeds budget')
#b


#c
## pandas.Dataframe because it is better with dealing with different 
## datatypes
#%%Problem 4
import numpy as np

temperatures = np.array([
    [18, 22, 15], [12, 20, 16], [18, 25, 17], [14, 23, 19],
    [16, 24, 21], [13, 21, 17], [17, 26, 22]
])
#a
avgTemp = np.mean(temperatures, axis=1)  
print(avgTemp)
    
# where evning =< morning
#   day, noon, evning
# compare kolumn 0 with kolumn 2
# all rows

#b
a = temperatures[:,[0,2]]
morning = a[:,0]
evening = a[:,1]

tDays = 0

for j in range(len(morning)):
    if evening[j] >= morning[j]:
        tDays +=1

print(f"There are {tDays} days where evening's temp was >= morning's")

#c
def shift(temperatures, day, offset):
    newTemp = np.array([])
    
    return newTemp

    
#%%Problem 5
import pandas as pd

locations = pd.DataFrame({
    'Location': [1,2,3,4],
    'A': [3.5, 140, 534.5, 334],
    'B': [1000, 500, 999, 50],
    'C': [156, 303, 849, 17]
})

names = pd.DataFrame({
    'Location': [1,2,3,4],
    'Name': ['Växjö', 'Borås', 'Umeå', 'Lund']
})  

#a
summa = locations['A']+locations['B']+locations['C']
avgte= summa / 3
locations['Avg distance'] =avgte
  
#b


#c
locations = locations.merge(names, on='Location')
print(locations)
  
####SLUT####

#%%
# Problem 1 
#a. b
cost= 500 #kr
bulkDisc = 0.05

while True:
    
    try:
        userNeed = float(input('Enter quantity of concrete in cubic meter: '))
       
        totalPris=cost*userNeed
        
        if userNeed >= 10:
            discount= totalPris * bulkDisc
            newTot = totalPris - discount
            print(f'Base price: {totalPris}')
            print(f'Discount is {discount}')
            print(f'Total discounted price {newTot}')
        else:
            print(f'Tot cost is {totalPris} and discount is {0}')
        break
    
    except ValueError:
        print('Not a number!')
#%% Problem 2

breakdowns = [2, 0, 1, 0, 0, 3, 1]
#a
avgPerDay = (sum(breakdowns)/len(breakdowns))
print(f'the average number of breakdowns per day is {avgPerDay}\n')
#b
counterNobreak = 0
totNobreak = 0

for i in breakdowns:
    if i == 0:
        counterNobreak += 1
    else:
        counterNobreak = 0

    if counterNobreak > totNobreak:
        totNobreak = counterNobreak

print(totNobreak)

def recent_breakdowns(days):
    newBD = breakdowns[-days:]
    return sum(newBD)
## print visar på skärmen men skickar inte tillbaka något 
#medan return avslutar funktionen och skickar tillbaka värdet
#%% Problem 3

names = ["Jens", "Mohamud", "Anna", "Jens", "Karin"]
ages = [25, 22, 23, 26, 21]
#a
higestAge= 0
oldest = 0 
for i in range(len(ages)):
    if ages[i] > higestAge:
        higestAge = ages[i]
        oldest = i      
print(names[oldest], higestAge, 'år')
#b
studentNames = 0

ask4name = input('Enter a name: ')

for n in names:
    if ask4name.upper()== n.upper():
        studentNames +=1
print('Amount students with that names', studentNames)
        
#3c
def students_to_dicts(names, ages):
    students = []

    for i in range(len(names)):
        student = {
            'name': names[i],
            'age': ages[i]
        }
        students.append(student)

    return students


names = ["Jens", "Mohamud", "Anna"]
ages = [25, 22, 23]

result = students_to_dicts(names, ages)
print(result)
#%% PRoblem 4
import numpy as np

distances = np.array([
    [0, 120, 85, 200],
    [120, 0, 95, 180],
    [85, 95, 0, 150],
    [200, 180, 150, 0]
])
totD = np.sum(distances, axis=1)
ndx = np.argmax(totD)
print('the index is', ndx)

#4b
def route_distance(distances, route):
    totalDist = 0

    for i in range(len(route) - 1):
        totalDist += distances[route[i], route[i+1]]

    return totalDist
print(route_distance(distances, [3,2,1]))
#%% Problem 5
import pandas as pd

suppliers = pd.DataFrame({
    'Supplier': ['ByggNord', 'Material AB', 'ByggNord', 'Material AB', 'BaraBetong'],
    'Material': ['Concrete', 'Concrete', 'Steel', 'Steel', 'Concrete'],
    'UnitPrice': [500, 480, 1200, 1250, 510],
    'FixedCost': [2000, 1500, 3000, 2800, 1800]
})

locations = pd.DataFrame({
    'Supplier': ['ByggNord', 'Material AB', 'BaraBetong'],
    'Location': ['Stockholm', 'Göteborg', 'Malmö']
})

#5b
userMTRL = input('Enter Materials: ')
lager = suppliers.loc[suppliers['Material'] == userMTRL, 'Supplier']
print(lager)

#5b
avg_price_by_material = suppliers.groupby('Material')['UnitPrice'].mean()
print("Average unit price per material:\n", avg_price_by_material)

suppliers_with_locations = suppliers.merge(locations, on='Supplier', how='left')

material = input("Enter material to list locations: ")

locations_for_material = suppliers_with_locations.loc[
    suppliers_with_locations['Material'] == material, 'Location'
]

if locations_for_material.size == 0:
    print("No locations found for that material.")
else:
    print("Locations for", material + ":", ", ".join(locations_for_material))









#%%

van = 1000
lorry = 10000
while True:
    
    try:    
        cargoKg = float(input('Enter weight of cargo in KG: '))
        if cargoKg <0:
            print('Invalid input')
            continue
        if  cargoKg <= van:
            print('Van')
            laodingPrecentage = 100 * (cargoKg / van)
            print('Loading precentage in %: ', laodingPrecentage)
        if cargoKg > van and cargoKg <= lorry:
            print('Lorry')
            laodingPrecentage = 100 * (cargoKg / lorry)
            print('Loading precentage in %: ', laodingPrecentage)

        if cargoKg > lorry:
            print('Does not fit on availabe vehicles')
       
        break
    
    except ValueError:
        print('Invalid input')
        #%% Problem 2 a,c

riders = [613, 500, 510, 580, 598, 320, 255]

numberOfRiders = sum(riders)
print('Number of riders:', numberOfRiders)

sumDuringWeek = sum(riders[0:6])
totWeekDays = len(riders[0:6])
avgWeek=sumDuringWeek / totWeekDays
print('Avg weekday: ',avgWeek)

sumHelg = sum(riders[5:])
totHel = len(riders[5:])
avgWend = sumHelg/totHel
print('Avg during weekend: ',avgWend)

def biggest_increase(riders):
    biggest = 0
    biggestDay = 0

    for i in range(1, len(riders)):
        increase = riders[i]- riders[i-1]
       
        if increase > biggest:
            biggest = increase
            biggestDay = i
    return biggestDay

print (biggest_increase(riders))

#%% Problem 3 
components = [
{"material": "Concrete", "floor": 1, "quantity": 12},
{"material": "Steel", "floor": 1, "quantity": 8},
{"material": "Concrete", "floor": 2, "quantity": 15},
{"material": "Glass", "floor": 2, "quantity": 20},
{"material": "Steel", "floor": 3, "quantity": 5}
]
#a
def get_materials(components, floor):
    materialen = []
    for component in components:
        if component['floor'] == floor and component['material'] not in materialen:
            materialen.append(component['material'])
    return print(materialen)

#b
def get_material_summary(components):
    summary = {}
    for quants in components:
        mtrl= quants['material']
        #summary[mtrl] = summary.get(mtrl, 0) + quants['quantity']
        if mtrl not in summary:
            summary[mtrl]= quants['quantity']
        else:
            summary[mtrl] += quants['quantity']
    
    return summary
    
#### Runtime error: conde is syntactically correct 
## but python tris to access a missing key, giving keyerror

#%% Prblem 4
import numpy as np
# 3 wokers and 5 days , working hours

hours = np.array([
    [8, 8, 7, 8, 8],
    [8, 7, 8, 8, 6],
    [6, 8, 8, 8, 8]
])
salaries = np.array([255, 260, 280])
#a
totWorkH = np.sum(hours)
print(totWorkH)

eachWorker = np.sum(hours,1)
#b
totSalary = eachWorker * salaries
print(totSalary)
#c
##numpy is optimal for numeric calculations
## much faster than pandas when it comes to matrics
    
#%% Problem 5
import pandas as pd
current_year = 2026
bridges = pd.DataFrame({
    'BridgeID': [1, 2, 3, 4],
    'Name': ['Mjölbybron', 'Skärblackabron', 'Göta Kanalbron', 'Söderbron'],
    'RegionID': [1, 1, 1, 2],
    'LastInspectionYear': [2018, 2022, 2020, 2023],
})

regions = pd.DataFrame({
    'RegionID': [1, 2],
    'RegionName': ['Östergötland', 'Stockholm']
})
#a
bridges['YearsSinceInspection'] = current_year - bridges['LastInspectionYear']

#b
bridges['NeedsInspection'] = bridges['YearsSinceInspection'] > 5

#c
def count_bridges(bridges, regions, region_name):
    
    merged = bridges.merge(regions, on='RegionID')
    filer  = merged[merged['RegionName'] == region_name]
    return len(filer)

print(count_bridges(bridges, regions, 'Östergötland'))





























"""
