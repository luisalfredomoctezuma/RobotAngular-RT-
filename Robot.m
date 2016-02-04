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
Px=str2double(get(handles.edit1,'String'));
Py=str2double(get(handles.edit2,'String'));
Pz=str2double(get(handles.edit3,'String'));
l2=11; l3=7;
r=sqrt(Px^2+ Py^2);
if (l2+l3)>=r 
    cosq3=( (((Px)^2) +((Py)^2) +((Pz)^2) -((l2)^2) - ((l3)^2))/ (2*l2*l3));
    sinq3=(sqrt(1-(cosq3)^2));

    beta=atan(Pz/r);
    alfa=atan((l3*sinq3)/(l2+l3*cosq3));
    if(Px==0), q1=((atan(0))*180/pi);else, q1=90+((atan(Py/Px))*180/pi);end
    q2=( ((90*pi/180)-beta) -(alfa))*180/pi;
    q3=(atan(sinq3/cosq3))*180/pi;
	set(handles.text27,'string',q1); teta1=q1; matrices; pause(1) 
	set(handles.text28,'string',q2); teta2=q2; matrices; pause(1)
    set(handles.text29,'string',q3); teta3=q3; matrices; 
else
	msgbox('Punto inalcanzable');
    set(handles.text27,'string','inf')
    set(handles.text28,'string','inf')
    set(handles.text29,'string','inf')
end
