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
global Eslabon1 Eslabon2;
global teta1 teta2 teta3;
Eslabon1=[0;0;11;0];
Eslabon2=[0;0;18;0];
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
    set(handles.text2,'string',teta1)
else
    teta1=teta1+5;
end

function pushbutton2_Callback(hObject, eventdata, handles)
%% Aumenta teta1
global teta1;
teta1=teta1+5;
if teta1<=180
	matrices;
    set(handles.text2,'string',teta1)
else
    teta1=teta1-5;
end
function pushbutton3_Callback(hObject, eventdata, handles)
%% Disminuye teta2
global teta2;
teta2=teta2-5;
if (teta2>=-90)
	matrices;
    set(handles.text3,'string',teta2)
else
    teta2=teta2+5;
end

function pushbutton4_Callback(hObject, eventdata, handles)
%% Aumenta teta2
global teta2;
teta2=teta2+5;
if (teta2<=90)
	matrices;
    set(handles.text3,'string',teta2)
else
    teta2=teta2-5;
end

function pushbutton5_Callback(hObject, eventdata, handles)
%% Disminuye teta3
global teta3;
teta3=teta3-5;
if (teta3>=-90)
    matrices;
    set(handles.text4,'string',teta3)
else
    teta3=teta3+5;
end

function pushbutton6_Callback(hObject, eventdata, handles)
%% Aumenta teta3
global teta3;
teta3=teta3+5;
if teta3<=90
    matrices;
    set(handles.text4,'string',teta3)
else
    teta3=teta3-5;
end

function pushbutton7_Callback(hObject, eventdata, handles)
%% Reiniciar valores
global teta1 teta2 teta3;
teta1=0; teta2=0; teta3=0;
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
