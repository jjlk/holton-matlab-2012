function xprim = xprim2(t,x,flag,rad,omega)
% Computes time derivatives for use with script coriolis.m.
xprim = zeros(4,1);
omega = 7.292e-5;
rad= 6.37e6;
%
xprim(1) = (2.*omega)*sin(x(4))*x(2);
xprim(2) = -(2.*omega)*sin(x(4))*x(1);
xprim(3) = x(1)/(rad*cos(x(4)));
xprim(4) = x(2)/rad;
