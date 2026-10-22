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
