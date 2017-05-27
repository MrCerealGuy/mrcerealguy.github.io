clear all;

% Modellparameter
F=80;
FR=10;
cw=0.6;
A=0.4;
m=35;

v_50=50*1000/3600; % 100 km/h in m/s

% Simulationsparameter
simulation_opt=simset('Solver','ode5','FixedStep',1e-2);
Tsim=60;
[x,y,t]=sim('BobbyCar_mod',Tsim,simulation_opt);

vs_kmh = vs*3.6; % m/s in km/h umrechnen

% Geschwindigkeit plotten
figure(1);
plot(ts,vs_kmh,'k'); grid;
xlabel('t in s'); ylabel('v in km/h');
title('Simulation der Geschwindigkeit');

% Weg plotten
figure(2);
plot(ts,xs,'k'); grid;
xlabel('t in s'); ylabel('x in m');
title('Simulation der Position');