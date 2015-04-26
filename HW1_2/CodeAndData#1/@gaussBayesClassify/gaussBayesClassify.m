    % Constructor (takes zero arguments or 3)
    function obj = gaussBayesClassify(Xtr,Ytr, varargin)
      obj.means={}; obj.covars={}; obj.probs=[]; obj.classes=[];
      obj=class(obj,'gaussBayesClassify');
      if (nargin > 0) 
        obj = train(obj,Xtr,Ytr, varargin{:});
      end;
    end

