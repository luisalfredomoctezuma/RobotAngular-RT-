clear,clc;
syms teta1 teta2 teta3 g g1 g2 g3;  % g1=90  g2=0  g3=0
%                 
% A01=DH(teta1,2,0,g);
% A12=DH(teta2,0,11,0);
% A23=DH(teta3,0,7,0);
% T=A01*A12*A23

%% V1
% %% articulacion  tetha   d      a	alfa
% % 1              teta1   l1     0	90
% % 2              teta2   0      l2	0
% % 3              teta3   0      l3	0
% % A=[cos(teta)    -sin(teta)                     0           a;
% %    cos(alfa)*sin(teta)	cos(alfa)*cos(teta)  -sin(alfa)	 -d*sin(alfa);
% %    sin(alfa)*sin(teta)	sin(alfa)*sin(teta)  cos(alfa)	 d*cos(alfa);
% %    0                      0                     0          1];
% 
% A01=[cos(teta1),    -sin(teta1),    0,  0;
%      0,             0,              -1,	-2;
%      sin(teta1),    sin(teta1),     0,	0;
%      0,             0,              0   1];
% A12=[cos(teta2),    -sin(teta2)     0,  11;
%     sin(teta2),     cos(teta2)      0,	 0;
%     0,              0,              1	 0;
%     0,              0,              0    1];
% A23=[cos(teta3),    -sin(teta3), 0,  7;
%    sin(teta3)       cos(teta3),  0,	 0;
%    0,               0,           1,	 0;
%    0,                      0,    0,  1];
% 
% T=A01*A12*A23
% 
% T =[ cos(teta1), sin(teta1)*sin(teta2)*sin(teta3) - cos(teta2)*cos(teta3)*sin(teta1),   cos(teta2)*sin(teta1)*sin(teta3) + cos(teta3)*sin(teta1)*sin(teta2),   11*sin(teta1)*sin(teta2) + 7*cos(teta2)*sin(teta1)*sin(teta3) + 7*cos(teta3)*sin(teta1)*sin(teta2)]
%   [ sin(teta1), cos(teta1)*cos(teta2)*cos(teta3) - cos(teta1)*sin(teta2)*sin(teta3), - cos(teta1)*cos(teta2)*sin(teta3) - cos(teta1)*cos(teta3)*sin(teta2), - 11*cos(teta1)*sin(teta2) - 7*cos(teta1)*cos(teta2)*sin(teta3) - 7*cos(teta1)*cos(teta3)*sin(teta2)]
%   [          0,                       cos(teta2)*sin(teta3) + cos(teta3)*sin(teta2),                         cos(teta2)*cos(teta3) - sin(teta2)*sin(teta3),                                11*cos(teta2) + 7*cos(teta2)*cos(teta3) - 7*sin(teta2)*sin(teta3) + 2]
%   [          0,                                                                   0,                                                                     0,                                                                                                    1]
% 
 


%% %V2
% %% articulacion  tetha   d      a	alfa
% % 1              teta1   l1     0	90
% % 2              teta2   0      l2	0
% % 3              teta3   0      l3	0
% 
% 
% 
% A01=[cos(teta1),0,          sin(90)*sin(teta1)     0;
%    sin(teta1),  0,          -sin(90)*cos(teta1)    0;
%    0,           sin(90),   0                      2;
%    0,           0,          0                      1];
% A12=[cos(teta2),-cos(0)*sin(teta2), 0,      11*cos(teta2);
%    sin(teta2),  cos(0)*cos(teta2),	0,      11*sin(teta2);
%    0,           0,                  cos(0)	0;
%    0,           0,                  0       1];
% A23=[cos(teta3),-cos(0)*sin(teta3), 0,      7*cos(teta3);
%    sin(teta3),  cos(0)*cos(teta3),	0,      7*sin(teta3);
%    0,           0,                  cos(0)	0;
%    0,           0,                  0       1];
% 
% T=A01*A12*A23
% 
% % A=[cos(teta)    -cos(alfa)*sin(teta)    sin(alfa)*sin(teta)     a*cos(teta);
% %    sin(teta)    cos(alfa)*cos(teta)     -sin(alfa)*cos(teta)    a*sin(teta);
% %    0            sin(alfa)               cos(alfa)               d;
% %    0            0                       0                       1];
% 
% T =[ cos(teta1), sin(teta1)*sin(teta2)*sin(teta3) - cos(teta2)*cos(teta3)*sin(teta1),   cos(teta2)*sin(teta1)*sin(teta3) + cos(teta3)*sin(teta1)*sin(teta2),   11*sin(teta1)*sin(teta2) + 7*cos(teta2)*sin(teta1)*sin(teta3) + 7*cos(teta3)*sin(teta1)*sin(teta2)]
%    [ sin(teta1), cos(teta1)*cos(teta2)*cos(teta3) - cos(teta1)*sin(teta2)*sin(teta3), - cos(teta1)*cos(teta2)*sin(teta3) - cos(teta1)*cos(teta3)*sin(teta2), - 11*cos(teta1)*sin(teta2) - 7*cos(teta1)*cos(teta2)*sin(teta3) - 7*cos(teta1)*cos(teta3)*sin(teta2)]
%    [          0,                       cos(teta2)*sin(teta3) + cos(teta3)*sin(teta2),                         cos(teta2)*cos(teta3) - sin(teta2)*sin(teta3),                                11*cos(teta2) + 7*cos(teta2)*cos(teta3) - 7*sin(teta2)*sin(teta3) + 2]
%    [          0,                                                                   0,                                                                     0,                                                                                                    1]
% 


% 
% RotacionZ=[cos(teta1) -sin(teta1) 0 0;
%           sin(teta1)  cos(teta1)  0 0;
%           0            0            1 0;
%           0            0            0 1];
% RotacionX=[1 0           0            0;
%            0 cos(teta2) -sin(teta2) 0;
%            0 sin(teta2) cos(teta2)  0;
%            0 0           0           1];
% RotacionXX=[1 0          0            0;
%            0 cos(teta3) -sin(teta3) 0;
%            0 sin(teta3) cos(teta3)  0;
%            0 0           0           1];
% TrasEslabon0=[1,0,0,0;
%               0,1,0,0;
%               0,0,1,2;
%               0,0,0,1];
% TrasEslabon1=[1,0,0,0;
%               0,1,0,0;
%               0,0,1,11;
%               0,0,0,1];          
% TrasEslabon2=[1,0,0,0;
%               0,1,0,0;
%               0,0,1,7;
%               0,0,0,1]; 


%T=(RotacionZ*TrasEslabon0*RotacionX*TrasEslabon1)*RotacionXX*TrasEslabon2

% T =
%  
% [ cos(teta1), sin(teta1)*sin(teta2)*sin(teta3) - cos(teta2)*cos(teta3)*sin(teta1),   cos(teta2)*sin(teta1)*sin(teta3) + cos(teta3)*sin(teta1)*sin(teta2),   11*sin(teta1)*sin(teta2) + 7*cos(teta2)*sin(teta1)*sin(teta3) + 7*cos(teta3)*sin(teta1)*sin(teta2)]
% [ sin(teta1), cos(teta1)*cos(teta2)*cos(teta3) - cos(teta1)*sin(teta2)*sin(teta3), - cos(teta1)*cos(teta2)*sin(teta3) - cos(teta1)*cos(teta3)*sin(teta2), - 11*cos(teta1)*sin(teta2) - 7*cos(teta1)*cos(teta2)*sin(teta3) - 7*cos(teta1)*cos(teta3)*sin(teta2)]
% [          0,                       cos(teta2)*sin(teta3) + cos(teta3)*sin(teta2),                         cos(teta2)*cos(teta3) - sin(teta2)*sin(teta3),                                11*cos(teta2) + 7*cos(teta2)*cos(teta3) - 7*sin(teta2)*sin(teta3) + 2]
% [          0,                                                                   0,                                                                     0,                                                                                                    1]
%  
