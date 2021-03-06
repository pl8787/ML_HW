%% Prepare Dataset %%
iris = load('iris.txt');
pi = randperm(size(iris, 1));
Y=iris(pi,5);
X=iris(pi,1:2);

%% View Dataset %%
figure;
scatter(X(:,1),X(:,2),5,Y);

%% Caculate Mean and Covar %%
class0 = X(Y==0, :);
class1 = X(Y==1, :);
class2 = X(Y==2, :);
mean0 = mean(class0);
mean1 = mean(class1);
mean2 = mean(class2);
cov0 = cov(class0);
cov1 = cov(class1);
cov2 = cov(class2);
figure;
gaussPlot(mean0, cov0, 'blue');
hold on;
gaussPlot(mean1, cov1, 'green');
hold on;
gaussPlot(mean2, cov2, 'red');

%% Use Gauss Bayes Classify and View
model = gaussBayesClassify(X,Y);
class2DPlot(model, X, Y);

%% Use equalCovariances
model = gaussBayesClassify(X,Y,1);
class2DPlot(model, X, Y);

%% Add more features
for p = 2:4
    model = polyClassify(p,0,gaussBayesClassify());
    model = train(model, X, Y);
    class2DPlot(model, X, Y);
end

