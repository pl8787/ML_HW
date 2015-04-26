    % Test function: predict on Xtest
    function Yte = predict(obj,Xte, varargin)
      Yte = predict(obj.base, polyx(obj,Xte), varargin{:});
    end
