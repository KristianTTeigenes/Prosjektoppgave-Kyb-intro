p=1000;
L=0.1;
g=9.80665;

h=1;              % hoyde på tanken
hf=0*h;
h10=0.89*h;
h20=0.64*h;
href=0.8;

r=0.5;
rt=0.075;
A=pi*(1/2)^2;
At=pi*(0.075)^2;
Atut=At/2;

k_ut=sqrt(2*g)*p*Atut;
k=sqrt(2*g)*p*At;

a=(1/(p*A*sqrt(h)))*(2*k-k_ut);
b=(k*k_ut)/(1.6*h*(p*A)^2);
d=(k/(sqrt(h)*p*A^2));

zeta=0.7;
omega_0=0.57;
alpha=zeta*omega_0;
gammaverdi=3;
gamma=gammaverdi*alpha;
Beta=omega_0*sqrt(1-zeta^2);
theta=asin(zeta);


Kd=(2*zeta*omega_0+gamma+a)/d;
Kp=(omega_0^2+2*gamma*zeta*omega_0-b)/d;
Ki=gamma*omega_0^2/d;


% k=sqrt(2*9.81)*1000*Atut/2
% w1inn=p*A/k

% Kpk=14.5
% Tk=4.7
% Kp=7.5655
% Ki=0.0236
% Kd=13.994

Kp1=10;



