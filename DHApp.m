clear,clc;
syms teta1 teta2 teta3;
A01=DH(((teta1*pi)/180),2,0,((90*pi)/180));
A12=DH((teta2*pi/180),0,11,0);
A23=DH((teta3*pi/180),0,7,0);
T=A01*A12*A23

%% V1
% %% articulacion  tetha   d      a	    alfa
% % 1              teta1   l1     0	    90
% % 2              teta2   0      l2	0
% % 3              teta3   0      l3	0



