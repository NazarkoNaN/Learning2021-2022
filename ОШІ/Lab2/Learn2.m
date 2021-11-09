t=1:6;
t2=1:0.01:6;

Y =[2,8,12,10,5,14];

X = polyfit(t,Y,5);
P = polyval(X,t2);

plot(t,Y,'*',t2,P),grid;