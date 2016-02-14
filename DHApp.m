clear,clc;
syms teta1 teta2 teta3 alfa l1 l2 l3  g
%T=A01*
%% 1
%T1=A12*A23
%A01Inv=inv(A01)

%% 2
% T1=A01*A12
% InvT2=inv(A23)


%E2=(RotacionZ*RotacionX*TrasEslabon1)*RotacionXX*TrasEslabon2;
% M01=DH(teta1,0,0,0);
% M12=DH(0,11,0,teta2);
% M23=DH(0,7,0,teta3);

% T=M01*M12*M23;
% T1=M12*M23;
% M01T=(inv(M12))*(inv(M01))
% e1=M01T(1,:)


% A01=DH(teta1+90,0,0,g);
% A12=DH(teta2+90,0,11,0);
% A23=DH(teta3,0,7,0);

%T=A01*
%% 1
% T1=A12*A23
% A01Inv=inv(A01)

%% 2
% TA01Inv=inv(A23)
% A01=A01
% A23A12T=A23'*A12


% A01T=inv(A01)



%% MM

M01=MM(teta1,0,0,0);
M12=MM(0,11,0,teta2);
M23=MM(0,7,0,teta3);

M12M23=M12*M23
M01inv=inv(M01)

