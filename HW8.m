% HW 8 Q1
% Series RLC (see table 6-1 on page 343)
% I used Matlab. Freemat may have issues displaying characters
% If the fprint is causing issues, delete it. It wont change the output.

clc
clear all
% Q1. Determine vc(t) in the circuit as shown below 
%and plot its waveform for t >= 0 (no submission), given that:

% input yo numbas
Vo = 9;
R1 = 5;
R2 = 7;
L = 0.35;
C = 0.3;
t = 0.2;% From question (e)

% (a)
Vc = R2/(R1+R2) * Vo;
IL = 0;
fprintf('(a1)\r Vc(0): %.4f Volts.\n\r', Vc);
fprintf('(a2)\r iC(0): %.4f Amps.\n\r', IL);

% (b)
vL = 0;
fprintf('(b)\r vL(inf): %.4f Volts.\n\r', vL);

% Formulas from the book on page 360. Ch6 table 6-2.
% (c) Determine the damping coefficient ?
% Alpha=R2/(2*L)
a = R2/(2*L);
fprintf('(c)\r Vc(0): %.4f nepers/second.\n\r', a)

% (d) Determine the resonant frequency ??
% Omega (?) = 1/sqrt(L*C)
w = 1/sqrt(L*C);
fprintf('(d)\r w: %.4f rads/s.\n\r', w);


% (e) at t0=0.2
% Overdamped Response ? > ??
% Critically Damped ? = ??
% Underdamped ? < ??
% -------Overdamped-------
S1 = -a + sqrt(a^2 - w^2);
% and 
S2 = -a - sqrt(a^2 - w^2);

% For over damped v(t)=A1e^(S1*t) + A2e^(S2*t)
% A1=S2/(S2-S1)*Vc(0)
A1 = S2/(S2 - S1) * Vc;
% and
A2 = -S1/(S2 - S1) * Vc;

vct = A1 * exp(S1*t) + A2*exp(S2*t);
fprintf('(e)\r vC(t0): %.4f Volts.\n\r', vct);