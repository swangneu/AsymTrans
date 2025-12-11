clear;
clc;

f = 1e5;
omega = 2*pi*f;

L11 =  0.00367287;
L21 = 1065.96 / omega;
L31 = 1065.95 / omega;
L22 = 0.000948297;
L32 = 492.929 / omega;
L33 = 0.000948297;

L = [L11 L21 L31;
    L21 L22 L32;
    L31 L32 L33];

%%
figure;
L = L*1e6; % uH
h = heatmap(L);
h.Title = 'Inductance Matrix L';
h.XLabel = 'Winding';
h.YLabel = 'Winding';
h.CellLabelFormat = '%.3f';
colormap(parula); 
colorbar;

%% cantilever
Lm = L11;
n2 = L21/L11;
n3 = L31/L11;
L1 = L32*L11^2/L21/L31-L11;
L2 = L22*L11^2/L21^2-L32*L11^2/L21/L31;
L3 = L33*L11^2/L31^2-L32*L11^2/L21/L31;

%% power
V1 = 100;
V2 = 100;
L = L1 + L2;
d = 0.2;
dphi = d * pi;
P2 = V1*V2/n2/2/pi/f/L*dphi*(1-d);

V3 = 100;
L = L1 + L3;
d = 0.1;
dphi = d * pi;
P3 = V1*V3/n3/2/pi/f/L*dphi*(1-d);