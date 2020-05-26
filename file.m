t = 1:0.1:10;
f = inline('2.*x.^2+1')
y = f(t);

plot(t,y), grid on, title('figura 1'), xlabel('tiempo'), ylabel('velocidad');
