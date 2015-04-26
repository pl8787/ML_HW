%% Read Mnist Data
train_set = load('mnist_data/mnist-train.txt');
test_set = load('mnist_data/mnist-test.txt');

train_set = (train_set - 128.0) / 128.0;
test_set = (test_set - 128.0) /128.0;