%% Read Mnist Data
train_set = load('mnist_data/mnist-train.txt');
test_set = load('mnist_data/mnist-test.txt');

train_label = train_set(:,1);
test_label = test_set(:,1);
train_data = train_set(:,2:785);
test_data = test_set(:,2:785);

% Normalize
train_data = (train_data - 128.0) / 128.0;
test_data = (test_data - 128.0) /128.0;

%% Use Default SVM
default_svm = svmtrain(train_label, train_data);
[default_result, default_acc, default_prob] = svmpredict(test_label, test_data, default_svm);

%% Use Linear SVM
linear_svm = svmtrain(train_label, train_data, '-s 0 -t 0');
[linear_result, linear_acc, linear_prob] = svmpredict(test_label, test_data, linear_svm);

%% Grid search of C and gamma
all_model = {};
Z = [];
for c = -1 : 1 : 6
    for g = 0 : -1 : -8
        param = sprintf('-c %f -g %f -v 5', 2.0^c, 2.0^g);
        nolin_svm = svmtrain(train_label, train_data, param);
        Z = [Z nolin_svm];
    end
end

% Draw grid map
[X, Y] = meshgrid(-1 : 1 : 6, 0 : -1 : -8);
Z = reshape(Z, size(X));
surf(X, Y, Z);
