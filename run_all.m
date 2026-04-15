% ============================================
% RUN ALL – IAF FRAMEWORK
% Reproduces all figures from the manuscript
% ============================================

clear; clc; close all;

disp('====================================')
disp(' Running IAF Framework - All Figures ')
disp('====================================')

% --------------------------------------------
% Check scripts existence
% --------------------------------------------
required_scripts = {
  'figure1_script.m',
  'figure2_script.m',
  'figure3_script.m'
};

for i = 1:length(required_scripts)
  if exist(required_scripts{i}, 'file') ~= 2
    error(['Missing file: ', required_scripts{i}])
  end
end

disp('All required scripts found.')
pause(1)

% --------------------------------------------
% Run Figure 1
% --------------------------------------------
disp('Running Figure 1...')
try
  figure1_script;
  disp('Figure 1 done.')
catch
  warning('Error in Figure 1')
end

pause(1)

% --------------------------------------------
% Run Figure 2
% --------------------------------------------
disp('Running Figure 2...')
try
  figure2_script;
  disp('Figure 2 done.')
catch
  warning('Error in Figure 2')
end

pause(1)

% --------------------------------------------
% Run Figure 3
% --------------------------------------------
disp('Running Figure 3...')
try
  figure3_script;
  disp('Figure 3 done.')
catch
  warning('Error in Figure 3')
end

pause(1)

disp('====================================')
disp(' All figures processed successfully ')
disp('====================================')
