    % Batch training: just memorize data
    function obj=train(obj, Xtr,Ytr, varargin)
      obj.base = train(obj.base, polyx(obj,Xtr),Ytr, varargin{:});
    end
