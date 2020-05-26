% METODO DE BIPARTICION
% function [x, e, tol] = bipart[F,a,b,n]
% a = extremo inferior del intervalo inicial
% b = extremo superior del intervalo inicial
% n = numero de iteraciones
% x = solucion devuelta
% e = condicion de error (e = 0, correco. e = 1, intervalo inicial incorrecto)
% tol = cota de |x' - x| (x` = solucion aproximada, x = solucion verdadera)
function [x, e, tol] = bipart2(F,a,b,n)

FA = feval(F,a); 
FB = feval(F,b);
x = (a+b)/2;
FX = feval(F,x);
e = 0;

if FA * FB > 0, e = 1, break, end
if FA == 0, x = a, break, end
if FB == 0, x = b, break, end

%Iteraciones
for k = 1:n
    FX = feval(F,x); 
    if FX == 0, break, end
    if FA*FX < 0,
        b = x; 
        FB = feval(F,b);
    else
        x = (a+b)/2;
end
tol = (b-a)/2;


end