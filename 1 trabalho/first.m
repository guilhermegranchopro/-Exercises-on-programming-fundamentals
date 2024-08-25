x = 0:0.1:100;
y = sin(x);
plot(x,y)

x = 0:0.01:100;
y = sin(x);
plot(x,y)

x = 0:0.1:100;
y = exp(x);
plot(x,y)

x = 0:0.1:100;
y = log(x);
plot(x,y)

x = 0:0.1:100;
y1 = sin(x);
y2 = cos(x);
plot(x,y1,x,y2)

subplot(2,1,1)
x = 0:0.1:100;
y = sin(x);
plot(x,y);
title('y = sin(x)');
subplot(2,1,2)
x = 0:0.1:100;
y = cos(x);
plot(x,y);
title('y = cos(x)');