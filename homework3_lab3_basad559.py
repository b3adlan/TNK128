#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 16 11:28:11 2026

@author: Bashir Adlan, LiUID: basad559
"""
#%% 3.1

user_input = input('Enter any word that has a minimum length of 8 characters: ')    
if len(user_input) < 8:
    print('Invalid input! You enterd a word with:', len(user_input), 'characters', 'try to add ',8-len(user_input), 'more charachters')
else:
    print('The first letter is: '+ user_input[0] + ' and the last letter is: '+ user_input[-1] )
    My_substring = user_input[2:5]
    print('My choice of substring is:', My_substring)
#%% 3.2
def heritage(children, money):
    amount_children = len(children) #tar reda på längden för att räkna
    fair_share = money // amount_children # //ger heltal 
   # rest = (money / amount_children) - fair_share # tar reda på resten exact
    r_esiduals =  money % amount_children
    for i in children: 
        print(f"{i} : {fair_share},") 
    print('"(Residuals)":', r_esiduals)
ex32money= 1000000
ex32kids =['"Pippi"', '"Mockey"', '"Krtek"']
heritage(ex32kids,ex32money)

#%%  3.3 a)
passengers = [420, 465, 450, 480, 570, 310, 280] #given
#420, 465, 450, 480, 570, 310, 280
days = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']

total_passangers = 0
for i in passengers: 
    total_passangers += i #summing amount passengers for the whole week
    

print('Total passengers:', total_passangers)
print()

# 3.3 b)
avg = total_passangers / len(passengers) #avg passengers per day
 
print('Average passengers per day:', avg)
print()
# in this forloop, i loop through every day and catgorise it compaing with weekly avg

for j in range(len(passengers)):
    if passengers[j] > avg:
        print(days[j],'-',passengers[j],' is above average')
    elif passengers[j] < avg:
        print(days[j], '-', passengers[j], 'is below average')
    else:
        print(days[j], '-', passengers[j], ' is equal to average')

# 3.3 c)

def biggestIncrease(passenger): #biggest procentage increas
    biggestRatio = 0
    biggestDay = 1 #starting from tuesday to compare behind
    
    for i in range(1,len(passenger)): #having 1 ti avoid indexerror whe i-1
        ration = passenger[i] / passenger[i-1]
        if ration > biggestRatio: #max value is being updated dynamcly
            biggestRatio = ration
            biggestDay = i
            
    return biggestDay

indexOfTheDayWith = biggestIncrease(passengers)
print()
print('Biggest %%-Wise increase: ', indexOfTheDayWith, '('+days[indexOfTheDayWith] +')')