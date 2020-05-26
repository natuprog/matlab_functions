
% METODO DE BIPARTICION
% INPUTS
% F --> funcion a evaluar (funcion inline)
% a --> cota inferior
% b --> cota superior
% n --> numero de iteraciones
% OUTPUTS
% x --> resultado aproximado
% e --> condicion de error
% tol --> [error cometido, resultado + error, resultado - error]

function [x,e,tol,k] = bipart(F,a,b,n)
if F(a) * F(b) > 0
    e = 1;
else if F(a) * F(b) == 0
    if F(a) == 0
        x = a;
    else
        x = b;
    end
    e = 1;   
else
    e = 0;
    for k = 1:n
        x = (a+b)/2;
        FA = F(a); FB = F(b); FX = F(x);
        if FX * FA > 0
            a = x;
        else if FX * FA == 0
            break;
        else
            b = x;
        end            
    end
    tol = 0.5^(n-1);
    tol = [tol, x + tol, x - tol];
end
end
end