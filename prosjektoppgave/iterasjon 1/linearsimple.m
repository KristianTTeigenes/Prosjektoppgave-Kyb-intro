p=1000;
L=0.1;
g=9.80665;

h=1;              % hoyde på tanken
hf=0*h;
h10=0.8*h;
h20=0.5*h;
href=0.7;
n=2;
Tau=(sqrt(0.11)+L)*sqrt(2*h/g);

r=0.5;
rt=0.075;
A=pi*(r)^2;
At=pi*(rt)^2;
Atut=At/2;

sin_Amp=sqrt(2*g*h)*At/(n*A);

k_ut=sqrt(2*g)*p*Atut;
k=sqrt(2*g)*p*At;

a=(1/(p*A*sqrt(h)))*(2*k+k_ut/1.6);
b=(k*k_ut)/(1.6*h*(p*A)^2);
d=(k/(sqrt(h)*p*A^2));

zeta=1;
omega_0=0.4;
alpha=zeta*omega_0;
gammaverdi=-0.025;
gamma=gammaverdi*alpha;
Beta=omega_0*sqrt(1-zeta^2);
theta=asin(zeta);

disp(a^2-4*b)

lambda1=(-a+sqrt(a^2-4*b))/2;
lambda2=(-a-sqrt(a^2-4*b))/2;

T1=-1/lambda1;
T2=-1/lambda2;

K=d/b;

Kd=(2*zeta*omega_0+gamma-a)/d;
Kp=(omega_0^2+2*gamma*zeta*omega_0-b)/d;
Ki=gamma*omega_0^2/d;

disp([Kp, Ki, Kd])

% k=sqrt(2*9.81)*1000*Atut/2
% w1inn=p*A/k

% Kpk=14.5
% Tk=4.7
% Kp=1.3673;
% Ki=0.01;
% Kd=2.125;

Kp1=10;



