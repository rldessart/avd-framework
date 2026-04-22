function [T, dx] = synthetic_models(model_type)

  nx = 100;
  nz = 100;
  dx = 1;

  [X,Z] = meshgrid(1:nx,1:nz);

  T = zeros(nz,nx);

  switch model_type

    case 1
      T((X-50).^2 + (Z-50).^2 <= 15^2) = 1;

    case 2
      T(:,40:60) = 10;

    case 3
      T(:,50:end) = 10;

    otherwise
      error('Invalid model type')
  end

  G = gaussian_kernel(5, 1);
  T = conv2(T, G, 'same');

end


function G = gaussian_kernel(sz, sigma)
  [x,y] = meshgrid(-floor(sz/2):floor(sz/2));
  G = exp(-(x.^2 + y.^2)/(2*sigma^2));
  G = G / sum(G(:));
end
