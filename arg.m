function [ argm ] = arg( Mat, r, c )
%ARG Summary of this function goes here
%  Detailed explanation goes here
s = size(Mat)

vect_row = [1:r-1,r+1:s(1)];
vect_col = [1:c-1,c+1:s(2)];

suply = Mat(vect_row, vect_col);



argm = ((-1)^(r+c))*det(suply);
end