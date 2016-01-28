syms teta1 teta2 teta3 cosd sind;
                
% 
%           
% A12=DH(teta3,7,0,0)

%A12=DH(teta1,7,0,teta3);
%T=A01*A12

% Matriz T, que relaciona los cuatro eslabones
% T=A01*A12*A23*A34

A01 =[ cos(teta1), -cos(teta2)*sin(teta1),  sin(teta1)*sin(teta2),  0;
	sin(teta1),  cos(teta1)*cos(teta2), -cos(teta1)*sin(teta2),  0;
	0,             sin(teta2),             cos(teta2), 11;
	0,                      0,                      0,  1];

A12 =[ cos(teta3), -sin(teta3), 0, 0;
	 sin(teta3),  cos(teta3), 0, 0;
	0,           0, 1, 7;
	0,           0, 0, 1];

T=A01*A12




