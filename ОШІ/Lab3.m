clear all
N = 64;
t=0:N-1;

y0 = cos(2*pi*0.5*t/N);
y = y0 + 0.2 *rand(1,N);

tic;

M = [sum(t.^6),sum(t.^5),sum(t.^4),sum(t.^3);
     sum(t.^5),sum(t.^4),sum(t.^3),sum(t.^2);
     sum(t.^4),sum(t.^3),sum(t.^2),sum(t.^1);
     sum(t.^3),sum(t.^2),sum(t.^1),sum(t.^0)];

 Y = [sum(y.*t.^3);
      sum(y.*t.^2);
      sum(y.*t.^1);
      sum(y.*t.^0)];
 X = M^(-1)*Y;
 
 P = X(1)*t.^3+X(2)*t.^2+X(3)*t+X(4);
 
 time = toc;
 
 std(y0-y)
 std(y0-P)
 
 plot(t,y,t,y0,t,P),grid;