%% D-H
function A=DH(teta,d,a,alfa)


A=[cos(teta)    -sin(teta)    0     a;
   cos(alfa)*sin(teta)	cos(alfa)*cos(teta) -sin(alfa)	-d*sin(alfa);
   sin(alfa)*sin(teta)	sin(alfa)*sin(teta) cos(alfa)	d*cos(alfa);
   0            0                       0                       1];



