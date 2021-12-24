clear all
clc
x=rand(1,100000);
plot(x),grid;
pause()
hist(x),grid;
pause()

p=0,3;
n=0;
for k=1:100000
    if x(k)<p
        n=n+1;
        A(n)=x(k);
    end
end
plot(A),grid
pause()
hist(A),grid