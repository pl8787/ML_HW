function [X Y] = reorderData(X,Y)
  [Nx,Mx] = size(X);
  [Ny,My] = size(Y);
  if (Nx ~= Ny) error('X and Y should have the same number of rows'); end;
  pi = randperm(Nx);
  X = X(pi,:);
  Y = Y(pi,:);

