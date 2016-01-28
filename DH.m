%% D-H
function A=DH(teta,d,a,alfa)

A=[cos(teta)    -cos(alfa)*sin(teta)    sin(alfa)*sin(teta)     a*cos(teta);
   sin(teta)    cos(alfa)*cos(teta)     -sin(alfa)*cos(teta)    a*sin(teta);
   0            sin(alfa)               cos(alfa)               d;
   0            0                       0                       1];


% Articulacion  Q   d   a   A
%   1           Q1  d1  0   0
%   2           90  d2  0   90
%   3           0   d3  0   0
%   4           Q4  d4  0   0
