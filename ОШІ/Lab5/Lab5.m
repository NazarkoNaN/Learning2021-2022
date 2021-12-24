N=250;
t=0:N-1;

x0(1:N)=1;
x1=0.6*rand(1,N);
x2=2*rand(1,N).^2;
x3=sin(2*pi*t/N);

y0=0.15;
y1=0.3;
y2=0.35;
y3=0.5;

Sum =x0*y0+x1*y1+x2*y2+x3*y3;

for i=1:N
    if Sum(i)>=0
        f(i)=-1;
    else
        f(i)=1;
    end
end

plot(t,x0,'red',t,x1,'green',t,x2,'blue',t,x3,'black'),grid;
figure
plot(t,Sum),grid;
figure
plot(t,f),grid;