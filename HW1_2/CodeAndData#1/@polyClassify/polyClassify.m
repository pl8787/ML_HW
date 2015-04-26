    % Constructor (takes zero arguments or 3)
    function obj = polyClassify(degree, useConstant, baseLearner, Xtr,Ytr, varargin)
      obj.base = baseLearner;
      obj.useConstant = useConstant;
      obj.degree = degree;
      obj=class(obj,'polyClassify');
      if (nargin > 3) 
        obj = train(obj,Xtr,Ytr, varargin{:});
      end;
    end

