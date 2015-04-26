    % display function, print out coefficients
    function display(obj)
      fprintf('Logistic Regression Object; %d features\n',length(obj.wts));
      disp(obj.wts);
    end

