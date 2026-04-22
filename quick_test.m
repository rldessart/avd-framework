% QUICK TEST SCRIPT
% This script reproduces the synthetic models and computes the main
% magnetic attributes used in the study: GZ, ASA, AVD, and IAVD.

addpath('attributes_asa_avd')

clear; close all; clc;

model_type = 2;   % 1=body, 2=dike, 3=contact

disp('Running synthetic model...')

% Generate synthetic model
[T, dx] = synthetic_models(model_type);

% Compute attributes
[GZ, ASA, AVD, IAVD] = compute_all_attributes(T, dx);

% Display results
figure
subplot(2,2,1), imagesc(GZ), title('GZ'), axis equal tight
subplot(2,2,2), imagesc(ASA), title('ASA'), axis equal tight
subplot(2,2,3), imagesc(AVD), title('AVD'), axis equal tight
subplot(2,2,4), imagesc(IAVD), title('IAVD'), axis equal tight
