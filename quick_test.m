% QUICK TEST SCRIPT
% This script reproduces the synthetic models and computes the main
% magnetic attributes used in the study: GZ, ASA, AVD, and IAVD.

addpath('attributes_asa_avd')

clear; close all; clc;

disp('Running synthetic model...')

% Gerar modelo
[T, dx] = synthetic_models(2);

figure
imagesc(T)
title('Synthetic Model')
axis equal tight
colorbar

% Calcular atributos
[GZ, ASA, AVD, IAVD] = compute_all_attributes(T, dx);

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
