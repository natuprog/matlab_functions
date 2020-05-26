
% METODO DE NEWTON
% function [x,e,k] = newton (F, DF, x0, n, tol)
% INPUTS
% F --> funcion a resolver (mediante inline)
% DF --> derivada de dicha funcion (mediante inline)
% x0 --> punto inicial
% n --> numero de iteraciones
% tol --> tolerancia (e = 0, solo si |F(x)| < tol, tras las n iteraciones)
% OUTPUTS
% x --> valor tras k iteraciones (solucion obtenida)
% e --> condicion de error ( e = 0 si |F(x)| < tol, e = 1 en caso contrario,
%       e = 2 si DF(x) = 0 en algun paso, e = 3 si se produce overflow
% k --> iteraciones dadas

function [x,e,k] = newton (F, DF, x0, n, tol)
    x = x0; e = 1;
    for  k= 1:n
        if DF(x) == 0
            e = 2;
            break;
        end
        if isnan(x) | isinf(x)
            e = 3;
            break;
        end
        x = x - (F(x) / DF(x));
    end
    if abs(F(x)) < tol
        e = 0;
    else
        e = 1;
    end
    
end