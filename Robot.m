function varargout = Robot(varargin)
%%
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Robot_OpeningFcn, ...
                   'gui_OutputFcn',  @Robot_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end
if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
function Robot_OpeningFcn(hObject, eventdata, handles, varargin)
%% Principal
handles.output = hObject;
global Eslabon0 Eslabon1 Eslabon2;
global teta1 teta2 teta3;
%Eslabon0=[0;0;2;0];
Eslabon0=[0;0;-7;0];
Eslabon1=[0;0;11;0];
Eslabon2=[0;0;7;0];
teta1=0; teta2=0; teta3=0;
matrices;
set(gcf,'toolbar','figure')
guidata(hObject, handles);
function varargout = Robot_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;
function pushbutton1_Callback(hObject, eventdata, handles)
%% Disminuye teta1
global teta1;
teta1=teta1-5;
if (teta1>=-180)
    matrices;
else
    teta1=teta1+5;
end

function pushbutton2_Callback(hObject, eventdata, handles)
%% Aumenta teta1
global teta1;
teta1=teta1+5;
if teta1<=180
	matrices;
else
    teta1=teta1-5;
end
function pushbutton3_Callback(hObject, eventdata, handles)
%% Disminuye teta2
global teta2;
teta2=teta2-5;
if (teta2>=-90)
	matrices;
else
    teta2=teta2+5;
end

function pushbutton4_Callback(hObject, eventdata, handles)
%% Aumenta teta2
global teta2;
teta2=teta2+5;
if (teta2<=90)
	matrices;
else
    teta2=teta2-5;
end

function pushbutton5_Callback(hObject, eventdata, handles)
%% Disminuye teta3
global teta3;
teta3=teta3-5;
if (teta3>=-90)
    matrices;
else
    teta3=teta3+5;
end

function pushbutton6_Callback(hObject, eventdata, handles)
%% Aumenta teta3
global teta3;
teta3=teta3+5;
if teta3<=90
    matrices;
else
    teta3=teta3-5;
end

function pushbutton7_Callback(hObject, eventdata, handles)
%% Reiniciar valores
global teta1 teta2 teta3;
teta1=0; teta2=0; teta3=0;
set(handles.text27,'string',0);set(handles.text28,'string',0); set(handles.text29,'string',0)
set(handles.text32,'string',0);set(handles.text33,'string',0); set(handles.text34,'string',0)
set(handles.edit1,'string',0);set(handles.edit2,'string',0); set(handles.edit3,'string',0)

matrices;

function checkbox1_Callback(hObject, eventdata, handles)
%% E-Trabajo
global valorETrabajo;
valorETrabajo= get(hObject,'Value');
if valorETrabajo==1    
    ETrabajo;
else
	%
end



function edit1_Callback(hObject, eventdata, handles)
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
%% C-Inversa
global teta1 teta2 teta3;
%teta1=0; teta2=0; teta3=0;
Px=str2double(get(handles.edit1,'String'));
Py=str2double(get(handles.edit2,'String'));
Pz=str2double(get(handles.edit3,'String'));
l2=11; l3=7;
com=(90*pi/180);
r=sqrt(Px^2+ Py^2);
if (l2+l3)>=r && Pz<=18 && Pz>=-7
    cosq3=( (((Px)^2) +((Py)^2) +((Pz)^2) -((l2)^2) - ((l3)^2))/ (2*l2*l3));
    sinq3=(sqrt(1-(cosq3)^2));
    beta=atan(Pz/r);
    alfa=atan((l3*sinq3)/(l2+l3*cosq3));
    if ((Px>=0 && Py>=0)||(Px>=0 && Py<=0))
        %disp('Cuadrante 1y2');
        if(Px==0),Px=0.00001;end
        q1=com*180/pi+((atan(Py/Px))*180/pi);
        q2=( (com-beta) -(alfa))*180/pi;
        q3=(atan(sinq3/cosq3))*180/pi;
    elseif ((Px<0 && Py>0)|| (Px<0 && Py<0))
        %disp('Cuadrante 3y4');
        if(Px==0),Px=0.00001;end
        q1=com*180/pi+((atan(Py/Px))*180/pi)-180;
        q2=(((com-beta) -(alfa))*180/pi);
        q3=((atan(sinq3/cosq3))*180/pi);
    end
	set(handles.text27,'string',q1); teta1=q1; matrices; pause(1) 
	set(handles.text28,'string',q2); teta2=q2; matrices; pause(1)
    set(handles.text29,'string',q3); teta3=q3; matrices;
else
	msgbox('Punto inalcanzable');
    set(handles.text27,'string','0')
    set(handles.text28,'string','0')
    set(handles.text29,'string','0')
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
%% C-Inversa-Matrices DH
global teta1 teta2 teta3;

Px=str2double(get(handles.edit1,'String'));
Py=str2double(get(handles.edit2,'String'));
Pz=str2double(get(handles.edit3,'String'));
l2=11; l3=7;
r=sqrt(Px^2+ Py^2);
if (l2+l3)>=r && Pz<=18 && Pz>=-7
    q1=(atan(-(Px/Py)))*180/pi;
    q2=atan(  (Px/(11*sind(q1))) / ( ((-7*cosd(q1)*(Px/(7*sind(q1))))/Py) - ((Px*Pz)/(11*sind(q1)*Py) ) )   )*180/pi;
    
    sinq3=  ((cosd(q2)*sind(q1)*Px)/7) - ((cosd(q1)*cosd(q2)*Py)/7) - ((sind(q2)*Pz)/7);
    %cosq3= ( ((sind(q1)*sind(q2)*Px)/7)  - ((cosd(q1)*sind(q2)*Py)/7) +((cosd(q2)*Pz)/7) -(11/7) ) ;
    q3=atan(  sinq3  / ( ((sind(q1)*sind(q2)*Px)/7)  - ((cosd(q1)*sind(q2)*Py)/7) +((cosd(q2)*Pz)/7) -(11/7) ) )*180/pi;
    set(handles.text32,'string',q1); teta1=q1; matrices; pause(1) 
    set(handles.text33,'string',q2); teta2=q2; matrices; pause(1) 
	set(handles.text34,'string',q3); teta3=q3; matrices;
else % 
	msgbox('Punto inalcanzable');
    set(handles.text32,'string','0')
    set(handles.text33,'string','0')
    set(handles.text34,'string','0')
end

