function [Xtr Xte Ytr Yte] = splitData(X, Y, trainFraction)
  [Nx,Mx] = size(X);
  [Ny,My] = size(Y);
  if (Nx ~= Ny) error('X and Y should have the same number of rows'); end;
  Ne = round(trainFraction*Nx);
  Xtr = X(1:Ne,:); Xte=X(Ne+1:end,:);
  Ytr = Y(1:Ne,:); Yte=Y(Ne+1:end,:);

  

