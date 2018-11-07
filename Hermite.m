%Calculate the value of the Hermite polynomial H_v(x).
%This function is mainly for physists. 

function ret=Hermite(v,x)

H0=1.0;
H1=2.0*x;

if v==0
    ret=1.0;
elseif v==1
    ret=H1;
else
    for vk=2:1:v
        H2=2.0*x*H1-2.0*(vk-1.0)*H0;
        H0=H1;
        H1=H2;
    end
    
    ret=H2;
end