%Plot the Hermite polynomial H_v(x) as a function of x. 
%You can adjust the part of this program labeld by [1].

%[1]%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xmin=-10; %The minimum value of x. The maximum value of x is given by -xmin
v=5; % v-th order Hermite polynomial. 
%The value v should be zero or positive integer.

%optional
dx=0.001; %segment for x.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xmax=-xmin; %The maximum value of x.

iter=(xmax-xmin)/dx;
x=zeros(iter,1);
Herm=zeros(iter,1);

for j=1:1:iter
    x(j,1)=xmin+(j-1)*dx ;
    Herm(j,1)=Hermite(v,x(j,1));
end

plot(x,Herm);
clear xmin xmax dx v iter j;