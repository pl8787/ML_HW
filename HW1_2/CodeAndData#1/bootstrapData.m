function [X Y] = reorderData(X,Y)
  [Nx,Mx] = size(X);
  [Ny,My] = size(Y);
  if (Nx ~= Ny) error('X and Y should have the same number of rows'); end;
  idx = ceil(rand(1,Nx)*Nx);
  X = X(idx,:);
  Y = Y(idx,:);

