function T=DH(teta,d,a,alfa)
RotacionZ=[cos(teta*pi/180) -sin(teta*pi/180) 0 0;
          sin(teta*pi/180)  cos(teta*pi/180)  0 0;
          0            0            1 0;
          0            0            0 1];
TrasZ=[1,0,0,0;
       0,1,0,0;
       0,0,1,d;
       0,0,0,1];
TrasX=[1,0,0,a;
	   0,1,0,0;
       0,0,1,0;
       0,0,0,1];
RotacionX=[1 0           0            0;
           0 cos(alfa*pi/180) -sin(alfa*pi/180) 0;
           0 sin(alfa*pi/180) cos(alfa*pi/180)  0;
           0 0           0           1];
          
%T=RotacionZ*RotacionX*TrasZ;
T=RotacionZ*TrasZ*TrasX*RotacionX;

