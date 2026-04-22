addpath('attributes_asa_avd')

clear; close all; clc;

disp('Running synthetic model...')

% ============================================
% MODELO
% ============================================
[T, dx] = synthetic_models(2);

% ============================================
% ADICIONAR RUÍDO
% ============================================
noise_level = 0.1;  % ajuste: 0.05, 0.1, 0.2
T = T + noise_level * randn(size(T));

% ============================================
% VISUALIZAR MODELO
% ============================================
figure
imagesc(T)
title(['Synthetic Model + Noise (', num2str(noise_level*100), '%)'])
axis equal tight
colorbar

% ============================================
% ATRIBUTOS
% ============================================
[GZ, ASA, AVD, IAVD] = compute_all_attributes(T, dx);

% ============================================
% NORMALIZAÇÃO (IMPORTANTE para visual)
% ============================================
GZ  = GZ  / max(abs(GZ(:)));
ASA = ASA / max(ASA(:));
AVD = AVD / max(abs(AVD(:)));
IAVD = IAVD / max(abs(IAVD(:)));

% ============================================
% PLOT FINAL
% ============================================
figure

subplot(2,2,1)
imagesc(GZ)
title('GZ'); axis equal tight; colorbar

subplot(2,2,2)
imagesc(ASA)
title('ASA'); axis equal tight; colorbar

subplot(2,2,3)
imagesc(AVD)
title('AVD'); axis equal tight; colorbar

subplot(2,2,4)
imagesc(IAVD)
title('IAVD'); axis equal tight; colorbar
imagesc(IAVD)
title('IAVD'); axis equal tight; colorbar
