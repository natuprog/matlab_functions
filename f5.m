function z = f5(u)
x = u(1);
y = u(2);
z = u(3);
z = [2*x.^3-4*x-y-18;
    -x+2*y.^3-4*x-y-z-54;
    -y+2*z.^3-4*z-133.2];
end
