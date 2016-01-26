global RotacionZ RotacionX RotacionXX TrasEslabon1 TrasEslabon2;
global teta1 teta2 teta3 CDM;
global Eslabon1;
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
TrasEslabon1=[1,0,0,0;
              0,1,0,0;
              0,0,1,11;
              0,0,0,1];
TrasEslabon2=[1,0,0,0;
              0,1,0,0;
              0,0,0,7;
              0,0,0,1];          
E1=RotacionZ*RotacionX*Eslabon1;
E2=(RotacionZ*RotacionX*TrasEslabon1)*RotacionXX*TrasEslabon2;
hold off
plot3(E1(1),E1(2),E1(3),'ro')
hold on
plot3(E2(1,4),E2(2,4),E2(3,4),'ro')
line([0 E1(1)],[0 E1(2)],[0 E1(3)],'color','r','LineWidth',20)
hold on
line([E1(1) E2(1,4)],[E1(2) E2(2,4)],[E1(3) E2(3,4)],'color','black','LineWidth',20)
grafo;
% Cinematica Directa con Matrices
CDM=E2(:,4);
set(handles.text8,'string',CDM(1))
set(handles.text9,'string',CDM(2))
set(handles.text10,'string',CDM(3))

% Cinematica Directa M-Geometrico
disp('--')
z=11*cosd(teta2)+7*cosd(teta2+teta3);
y=11*sind(teta2)+7*sind(teta2+teta3)
r=sqrt((z^2)+(y^2))
% Cuanto giro en Z?  
x=r*cosd(teta1)
xx=r*sind(teta1)

set(handles.text13,'string',CDM(1))
set(handles.text14,'string',CDM(2))
set(handles.text15,'string',z)