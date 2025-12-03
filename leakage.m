clear;
clc;
L11 = 8.56725e-5;
L21 = 3.21438e-5;
L31 = 3.17159e-5;
L22 = 0.000291667;
L32 = 0.000154833;
L33 = 0.000287074;

L = [L11 L21 L31;
    L21 L22 L32;
    L31 L32 L33];

%%
figure;
h = heatmap(L);
h.Title = 'Inductance Matrix L';
h.XLabel = 'Current index j';
h.YLabel = 'Flux linkage index i';
h.CellLabelFormat = '%.3f';
colormap(parula);   % or 'jet', 'turbo', 'hot'
colorbar;
