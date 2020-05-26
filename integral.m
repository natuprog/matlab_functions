function [int] = integral (f,a,b,h)
%Calculo del valor numerico de una integral mediante Rieman
%==========================================================
% Argumentos:
% * int     -->     resultado de la integral
% * f       -->     funcion a integrar
% * a       -->     cota inferior de integracion
% * b       -->     cota superior de integracion
% * h       -->     tamaño de paso de la integral
%==========================================================
int = [0 0]
for i = a:h:b
    int(1) = int(1) + feval(f,i)*h;
end

for i = a+h:h:b+h
    int(2) = int(2) + feval(f,i)*h;
end

int = (int(1) + int(2))/2;
