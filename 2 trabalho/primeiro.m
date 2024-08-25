tic
i = 1;
for x = -1:0.01:3
    y(i) = x^2 -3*x+2;
end
toc
x = -1:0.01:3;
tic
y = x.^2 - 3*x + 2;
toc
plot(x,y);