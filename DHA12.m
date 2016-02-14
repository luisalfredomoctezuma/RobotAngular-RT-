function T=DH(teta,d,a,alfa)
%(RotacionZ)*RotacionX*TrasEslabon1;
TrasZ=[1,0,0,0;
	   0,1,0,0;
       0,0,1,d;
       0,0,0,1];
RotacionX=[1 0           0            0;
           0 cos(alfa*pi/180) -sin(alfa*pi/180) 0;
           0 sin(alfa*pi/180) cos(alfa*pi/180)  0;
           0 0           0           1];
          
T=RotacionX*TrasZ;
