% Test function: predict on Xtest
function Yte = predict(obj,Xte)
  Yte = obj.classes( 1 + logistic(obj,Xte) );
end

