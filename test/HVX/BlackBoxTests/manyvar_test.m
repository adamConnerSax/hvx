nx = 2;
ny = 3;
nz = 4;
a = [-0.1022 , 0.3129
    ; -0.2414 , -0.8649
    ; 0.3192 , -0.0301 ];
b = [-0.1649 , 1.1093 , -1.2141
    ; 0.6277 , -0.8637 , -1.1135
    ; 1.0933 , 0.0774 , -0.0068 ];
c = [1.5326 , -0.2256 , 0.0326 , 1.5442
    ; -0.7697 , 1.1174 , 0.5525 , 0.0859
    ; 0.3714 , -1.0891 , 1.1006 , -1.4916 ];
d = [-0.6156 , 0.7481 , -0.1924]';

cvx_begin
   variables x(nx) y(ny) z(nz)
   maximize -norm(a*x + b*y + c*z + d, 2) - norm(x, 1) - norm(y, 4.2)
   subject to
     0.1 >= exp(z)
     power(x, 0.25) >= 10
     power(y, 1.75) <= 10
cvx_end
