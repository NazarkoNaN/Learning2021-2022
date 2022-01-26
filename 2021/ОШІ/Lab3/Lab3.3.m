clear all
N = 64;
t=0:N-1;

y0=cos(2*pi*0.5*t/N);
y=y0+0.2*randn(1,N);

tic;

X=polifit(t,y,5);

P=polival(X,t);

time = toc;

std(y0-y)
std(y0-P)

plot(t,y,t,y0,t,P),grid;