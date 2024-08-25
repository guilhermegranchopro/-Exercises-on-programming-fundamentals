disp('This program performs a least-square fit of an');
disp('input data set to a straight line ');
temp = readmatrix('input1.dat.txt')
n_points = length(temp(:,1) );
x=zeros(1,n_points);%preallocate x and y
y=zeros(1,n_points);
for ii=1:n_points
x = temp(:,1)
y = temp(:,2)
ii = ii+1
end
%Accumulate Statistics
sum_x =0; %Initialize all sums
sum_x2=0;
sum_y =0;
sum_xy=0;
for ii=1:n_points %Calulate sums using a for loop
sum_x=sum_x+x(ii);
sum_x2=sum_x2+x(ii)^2;
sum_y=sum_y+y(ii);
sum_xy=sum_xy+x(ii)*y(ii);
end

x_bar=sum_x/n_points;
y_bar=sum_y/n_points;
slope=(sum_xy-sum_x*y_bar)/(sum_x2-sum_x*x_bar);
y_int=y_bar-slope*x_bar;
%Tell user
disp('Regression coefficients for the least square line:');
fprintf('Slope (m) =%8.3f\n',slope)
fprintf('Intercept (b) =%8.3f\n',y_int)
fprintf('No of Points =%8d\n',n_points)
%Plot the data points as b;lue circles with no connecting lines
plot(x,y,'bo');
hold on;
%Create line
xmin=min(x); %find smallest data value
xmax=max(x); %find largest data value
ymin=slope*xmin+y_int; %Find corresponding y
ymax=slope*xmax+y_int;%Find corresponding y

%Plot a solid red line with no markers
plot([xmin xmax],[ymin ymax],'r-','Linewidth',2);
hold off;
title('Least-Squares fit');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('input data','fitted line');
grid on;