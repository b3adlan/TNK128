#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 10 14:22:31 2026

@author: bashir adlan (basad559)
"""

#%% ex2.1
import math

def Vsphere(r):
    volume=(math.pow(r,3))*(4/3)*(math.pi) # the fomula to calc volume of sphere
    v=round(volume) #rounded volume
    print("The volume of the Sphere ~ ",v)
    
# for r =5 gives 523.5987 units almost 524,

#%% ex2.2

def ask_palindrome():
    word = input('Enter a word to check if it is a palindrome: ')
    reversed_word = word[::-1] # go throgh backwards by slicing
    
    if word == reversed_word:
        print(word + " " + 'is palindrome!')
    else:
        print(word +" " + 'is not palindrome!')
        
#%% ex2.3
def burger_restaurant(listOfSales):
    burger_price=99 #kr
    burger_cost=65 #kr
    
    print('Revenue / day: ') # showing and calculating the revenue per day
    for sales_day in listOfSales:
        revenue= sales_day * burger_price # amoount sold * price
        print(revenue)
    # calc the total profit
    tot_profit=0 
    for sales_day in listOfSales:
        profit_daily= sales_day * (burger_price-burger_cost)
        tot_profit += profit_daily
        print('Total profit: ', tot_profit)
        
    # longest streak = best streak found
    streak_now = 0
    streak_longest = 0

    for sales_day in listOfSales:
        if sales_day <= 10:
            streak_now += 1 #add one more day
            if streak_now > streak_longest: 
                streak_longest = streak_now # newest record
            else:
                streak_now = 0 # strek to be reset
                
        print("Longest streak of days =>10 burgers sold: ", streak_longest)

sales_list = [12, 8, 15, 11, 9, 20, 14]
burger_restaurant(sales_list)
# gives resultat: 
    