function T=DH(teta,d,a,alfa)
%syms teta1 alfa a d;
T=[cos(teta),           -sin(teta),             0,          a;
   cos(alfa)*sin(teta), cos(alfa)*cos(teta),    -sin(alfa),	-d*sin(alfa);
   sin(alfa)*sin(teta), sin(alfa)*sin(teta),    cos(alfa),  d*cos(alfa);
   0,                   0,                      0,          1];





% T =[ cos(teta), -cos(alfa)*sin(teta),  sin(alfa)*sin(teta), a*cos(teta);
% 	sin(teta),  cos(alfa)*cos(teta), -sin(alfa)*cos(teta), a*sin(teta);
% 	0,             sin(alfa),             cos(alfa),            d;
% 	0,                     0,                     0,            1];

% RotZ=[cos(teta1) -sin(teta1) 0 0;
%       sin(teta1)  cos(teta1)  0 0;
%       0            0            1 0;
%       0            0            0 1];
% RotX=[1 0           0            0;
%       0 cos(alfa) -sin(alfa) 0;
%       0 sin(alfa) cos(alfa)  0;
%       0 0           0           1];
% TrasZ=[1,0,0,0;
%        0,1,0,0;
%        0,0,1,d;
%        0,0,0,1];
%           
% TrasX=[1,0,0,a;
%        0,1,0,0;
%        0,0,1,0;
%        0,0,0,1];
% 
%  T=RotZ*TrasZ*RotX*TrasX
 