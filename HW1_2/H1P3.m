data = [2 2 1
        4 4 1
        4 0 1
        0 0 -1
        2 0 -1
        0 2 -1];
 
scatter(data(:,1), data(:,2), 36, data(:,3),'filled');
hold on;
% plot y = -x + 3
ezplot('-x+3',[-1,5])

