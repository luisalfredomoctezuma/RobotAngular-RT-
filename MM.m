function T=MM(teta,d,a,alfa)
RotacionZ=[cos(teta) -sin(teta) 0 0;
          sin(teta)  cos(teta)  0 0;
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
           0 cos(alfa) -sin(alfa) 0;
           0 sin(alfa) cos(alfa)  0;
           0 0           0           1];
          
T=RotacionZ*RotacionX*TrasZ;

