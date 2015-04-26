function [Xtr Xte Ytr Yte] = crossValidate(X,Y,nFolds,iFold)
  [Nx Mx] = size(X);
  [Ny My] = size(Y);
  if (Nx~=Ny) error('X and Y should be the same number of rows'); end;
  N  = fix(Nx/nFolds);
  if (iFold == nFolds) 
    Xte = X( (iFold-1)*N+1:Nx, :);  
    Yte = Y( (iFold-1)*N+1:Ny, :);  
    Xtr = X( [1:(iFold-1)*N] , :);  
    Ytr = Y( [1:(iFold-1)*N] , :);  
  else
    Xte = X( (iFold-1)*N+1:iFold*N , :);  
    Yte = Y( (iFold-1)*N+1:iFold*N , :);  
    Xtr = X( [1:(iFold-1)*N,iFold*N+1:Nx] , :);  
    Ytr = Y( [1:(iFold-1)*N,iFold*N+1:Ny] , :);  
  end;
  

