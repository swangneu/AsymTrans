clear;
clc;

f = 1e5;
omega = 2*pi*f;

L11 = 0.000320008;
L21 = 296.22/ omega;
L31 = 296.22/ omega;
L22 = 0.00116676;
L32 = 471.983 / omega;
L33 = 0.00116676;

L = [L11 L21 L31;
    L21 L22 L32;
    L31 L32 L33];

%%
figure;
L = L*1e6; % uH
h = heatmap(L);
h.Title = 'Inductance Matrix L';
h.XLabel = 'Current index j';
h.YLabel = 'Flux linkage index i';
h.CellLabelFormat = '%.3f';
colormap(parula);   % or 'jet', 'turbo', 'hot'
colorbar;

%% cantilever
Lm = L11;
n2 = L21/L11;
n3 = L31/L11;
L1 = L32*L11^2/L21/L31-L11;
L2 = L22*L11^2/L21^2-L32*L11^2/L21/L31;
L3 = L33*L11^2/L31^2-L32*L11^2/L21/L31;