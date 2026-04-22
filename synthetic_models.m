function [T, dx] = synthetic_models(model_type)

  % ============================================
  % GRID
  % ============================================
  nx = 100;
  nz = 100;
  dx = 1;

  [X,Z] = meshgrid(1:nx,1:nz);

  % ============================================
  % INITIALIZE MODEL
  % ============================================
  T = zeros(nz,nx);

  % ============================================
  % SELECT MODEL
  % ============================================
  switch model_type

    case 1  % Buried circular body
      T((X-50).^2 + (Z-50).^2 <= 15^2) = 1;

    case 2  % Vertical dike
      T(:,45:55) = 1;

    case 3  % Vertical contact
      T(:,50:end) = 1;

    otherwise
      error('Invalid model type')
  end

  % ============================================
  % SIMULATE MAGNETIC RESPONSE (SMOOTHING)
  % ============================================
  G = gaussian_kernel(9, 2);
  T = conv2(T, G, 'same');

end


% ============================================
% GAUSSIAN KERNEL FUNCTION
% ============================================
function G = gaussian_kernel(sz, sigma)
  [x,y] = meshgrid(-floor(sz/2):floor(sz/2));
  G = exp(-(x.^2 + y.^2)/(2*sigma^2));
  G = G / sum(G(:));
end
