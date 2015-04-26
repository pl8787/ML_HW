function Xext = polyx(obj,X)
% create polynomial features of each individual feature (no cross products)

[m,n]=size(X);
%if (n~=1) error('PolyX currently only works for univariate data'); end;


if (obj.useConstant)
  Xext = zeros(m,n*obj.degree+1);
  Xext(:,1) = 1;
  k=2;
else 
  Xext = zeros(m,n*obj.degree);
  k=1;
end;

for p=1:obj.degree,
  for j=1:n,
    Xext(:,k)=X(:,j).^p;
    k=k+1;
  end;
end;

