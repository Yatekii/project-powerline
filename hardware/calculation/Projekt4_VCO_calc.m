syms R2;
baud=100000;
C1=220e-12;
%% 


fmin=(400e3-baud);

r2=double(solve(fmin==1/(R2*(C1+32e-12))))

%% 
syms R1;
fmax=(400e3+baud);

r1=double(solve(fmax==(1/(R1*(C1+32e-12))+fmin)))

