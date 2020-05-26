function [ deter ] = deter( mat )
%=====================================================
%Function makes de determinant
%Takes Matrix and make for each element de argument 
%and then added all to deter which is the final result
%=====================================================
%           ARGUMENTS
% - mat --> matrix
% - deter --> result
%=====================================================
deter = 0;
s = size(mat);
for i=1:s(1)
    for j=1:s(2)
        deter = deter + arg(mat,i,j);    
    end
end
clc
end