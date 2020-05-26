function [ y ] = f2_1( x )

y = log(x) - 3*x+5;
fplot('f2_1',[0,10]), grid
fplot('f2_1',[0,3]), grid
fplot('f2_1',[0.5,2.5]), grid
fplot('f2_1',[0 0.001]), grid
fplot('f2_1',[0 0.01]), grid
end
%F2_1 Summary of this function goes here
%  Detailed explanation goes here
