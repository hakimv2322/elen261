% Compute n/Nd for freeze-out silicon doped with phosphorous,
% computed at varying temperatures (less than 200K)

close all
clear all

k = 1.38e-23; % Boltzmann constant
h = 6.626e-34; % Planck's constant
m0 = 9.11e-31; % electron mass (kg)

mn = 1.07*m0; % effective mass
gD = 2; % degeneracy constant
DeltaE = 0.045*1.6e-19; % Ec - Ed (Joules)
Nd = 1e15*1e6; % dopant density (1/m^3)

% Enter the temperature (Kelvin):
T = 100;

% Effective density of states:
Nc = 2*(2*pi*mn*k*T/(h^2))^1.5;

% "N-zeta":
Nz = (Nc/gD)*exp(-DeltaE/(k*T));

% Negative charge density:
n = 0.5*Nz*(sqrt(1 + 4*Nd/Nz) - 1);

% Display n/Nd:
n/Nd


