clear;
clc;

Lm = 1e-3;
L1 = 1e-6;
L2 = 1e-4;
L3 = 1e-4;
n2 = 0.5;
n3 = 0.5;

L11 = Lm;
L22 = (Lm + L1 + L2) * n2^2;
L33 = (Lm + L1 + L3) * n3^2;
L21 = Lm * n2;
L31 = Lm * n3;
L32 = (Lm + L1) * n2 * n3;

L = [L11 L21 L31;
    L21 L22 L32;
    L31 L32 L33];

figure;
L = L*1e6; % uH
h = heatmap(L);
h.Title = 'Inductance Matrix L';
h.XLabel = 'Current index j';
h.YLabel = 'Flux linkage index i';
h.CellLabelFormat = '%.3f';
colormap(parula);   % or 'jet', 'turbo', 'hot'
colorbar;
