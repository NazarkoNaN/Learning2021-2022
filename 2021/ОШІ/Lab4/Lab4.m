load woman
imshow(X,map);
pause()
N=256;
t=0:N-1;
y=X(3,:);

for n=0:N-1
    a(n+1)=0;
    b(n+1)=0;
    for k=0:N-1
        a(n+1)=a(n+1)+y(k+1)*cos(2*pi*n*k/N)/N;
        b(n+1)=b(n+1)+y(k+1)*sin(2*pi*n*k/N)/N;
    end
end

A=(a.^2+b.^2).^0.5;
%plot(y),grid
%pause()
figure
plot(A),grid
pause()

for k=0:N-1
    z(k+1)=0;
    for n=0:N-1
        z(k+1)=z(k+1)+a(n+1)*cos(2*pi*n*k/N)+b(n+1)+y(k+1)*sin(2*pi*n*k/N);
    end
end

figure
plot(t,y,t,z,'*'),grid
pause()