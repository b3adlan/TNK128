% exc 6.1 
% transportation cost matrix:
% 
costs = [
    120 180 150 210 170;
    140 160 190 200 150;
    110 170 180 220 160;
    130 150 170 190 140
    ];
%1
warehouse2Toall = costs(2,:);
%2
AllwarehousesTo4 = costs(:,4);
%3
costs(3,2)=155;
warehouse3To2= costs(3,2);
%4
new_warehouse = [125 165 175 205 145];
costs=[costs; new_warehouse];
%5
costs(:,3)=[];
%6
disp(costs)
[m, n] = size(costs);
fprintf('Dimensions: %dx%d\n', m, n);

%% ex 6.2
month = [1 2 3 4 5 6];
product1=[120 145 138 160 175 190];
product2 = [100 115 135 150 155 180];

plot(month, product1, '-o', month, product2, '-s');
xlabel('Month');
ylabel('Sales');
title('Monthly Sales of Product 1 and Product 2');
legend('Product 1', 'Product 2', 'Location', 'northwest');
grid on;
%% ex 6.3 
%1
deliveriesTable = readtable('deliveries.csv');
%disp(deliveriesTable);

%2
[maxPack, maxCity] = max(deliveriesTable.Packages);
Dest = deliveriesTable.Destination{maxCity};
fprintf('Destination with most packages is %s with %d packages\n', Dest, maxPack);

%3
new_delivery = table({'Malmo'},280,40);
new_delivery.Properties.VariableNames = deliveriesTable.Properties.VariableNames;
deliveriesTable = [deliveriesTable; new_delivery];
disp(deliveriesTable);
%4
writetable(deliveriesTable, 'deliveries_updated.csv');
%5
updatedTable = readtable('deliveries_updated.csv');
disp(updatedTable)

%%%%%%%%%%######