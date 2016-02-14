global Eslabon0 Eslabon1 Eslabon2;
global RotacionZ RotacionX RotacionXX TrasEslabon1 TrasEslabon2 TrasEslabon0;
global teta1 teta2 teta3 CDM;
set(handles.text2,'string',teta1)
set(handles.text3,'string',teta2)
set(handles.text4,'string',teta3)    

RotacionZ=[cosd(teta1) -sind(teta1) 0 0;
          sind(teta1)  cosd(teta1)  0 0;
          0            0            1 0;
          0            0            0 1];
RotacionX=[1 0           0            0;
           0 cosd(teta2) -sind(teta2) 0;
           0 sind(teta2) cosd(teta2)  0;
           0 0           0           1];
RotacionXX=[1 0          0            0;
           0 cosd(teta3) -sind(teta3) 0;
           0 sind(teta3) cosd(teta3)  0;
           0 0           0           1];
TrasEslabon0=[1,0,0,0;
              0,1,0,0;
              0,0,1,-7;
              0,0,0,1];          
TrasEslabon1=[1,0,0,0;
              0,1,0,0;
              0,0,1,11;
              0,0,0,1];          
TrasEslabon2=[1,0,0,0;
              0,1,0,0;
              0,0,1,7;
              0,0,0,1];          

E0=RotacionZ*TrasEslabon0;
E1=(RotacionZ)*RotacionX*TrasEslabon1;
E2=(RotacionZ*RotacionX*TrasEslabon1)*RotacionXX*TrasEslabon2;

hold off
plot3(E0(1),E0(2),E0(3),'ro')
hold on
plot3(E1(1),E1(2),E1(3),'ro')
hold on
plot3(E2(1,4),E2(2,4),E2(3,4),'ro')
hold on
% line([0 E0(1)],[0 E0(2)],[0 E0(3)],'color','black','LineWidth',20)
% hold on
line([0 E0(1,4)],[0 E0(2,4)],[0 E0(3,4)],'color','black','LineWidth',20)
hold on
line([0 E1(1,4)],[0 E1(2,4)],[0 E1(3,4)],'color','r','LineWidth',20)
hold on
line([E1(1,4) E2(1,4)],[E1(2,4) E2(2,4)],[E1(3,4) E2(3,4)],'color','black','LineWidth',10)
grafo;

%% Cinematica Directa con Matrices
CDM=E2(:,4);



set(handles.text8,'string',CDM(1))
set(handles.text9,'string',CDM(2))
set(handles.text10,'string',CDM(3))

%% M-Geometrico
% disp('--')
zz=11*cosd(teta2)+9*cosd(teta2+teta3);
yy=11*sind(teta2)+9*sind(teta2+teta3);
rr=sqrt((zz^2)+(yy^2));
% Cuanto giro en Z?  
x=rr*cosd(teta1);
xx=rr*sind(teta1);
set(handles.text13,'string',CDM(1)); set(handles.text14,'string',CDM(2));set(handles.text15,'string',CDM(3))







%% D-H

A01=DH(teta1+90,0,0,90);
A12=DH(teta2+90,0,11,0);
A23=DH(teta3,0,7,0);


T=A01*A12*A23;

set(handles.text17,'string',round(T(1,4),4))
set(handles.text18,'string',round(T(2,4),4))
set(handles.text19,'string',round(T(3,4),4))





