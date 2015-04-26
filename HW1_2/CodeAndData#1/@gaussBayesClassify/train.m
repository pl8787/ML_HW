    % Batch training: just memorize data
    function obj=train(obj, Xtr,Ytr, equalCovariances)
      if (nargin < 4) equalCovariances = 0; end;
      obj.classes = unique(Ytr);
      nData = size(Ytr,1);
      for i=1:length(obj.classes)
        idx = find(Ytr == obj.classes(i));
        obj.probs(i) = length(idx)/nData;    % the relative fraction of data in this class
        obj.means{i}  = mean(Xtr(idx,:));                % Calculate the class conditional mean here
        obj.covars{i} = cov(Xtr(idx,:));                 % Calculate the class conditional covariance here
      end;
      if (equalCovariances)                  % force covariances to be equal (weighted average)
        Call = 0; 
        for i=1:length(obj.classes), Call = Call + obj.probs(i)*obj.covars{i}; end;
        for i=1:length(obj.classes), obj.covars{i} = Call; end;
      end;
    end
