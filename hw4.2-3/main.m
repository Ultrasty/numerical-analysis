xx = [0 2 4 5 6 7 8 9 10.5 11.5 12.5 14 16 17 18 19 20 21 22 23 24];
yy = [2 2 0 2 5 8 25 12 5 10 12 7 9 28 22 10 9 11 8 9 3];
scatter(xx,yy)

modelFun =  @(p,x) p(1).*exp(-(x-p(2)).^2./p(3).^2)+p(4).*exp(-(x-p(5)).^2./p(6).^2)+p(7).*exp(-(x-p(8)).^2./p(9).^2);
startingVals = [25 8 1 12 12.5 1 28 17 1];

nlModel = fitnlm(xx,yy,modelFun,startingVals);

xgrid = linspace(0,24,100)';
line(xgrid,predict(nlModel,xgrid),'Color','r');


p = nlModel.Coefficients.Estimate;
x = linspace(0,24,24*60);
y = p(1).*exp(-(x-p(2)).^2./p(3).^2)+p(4).*exp(-(x-p(5)).^2./p(6).^2)+p(7).*exp(-(x-p(8)).^2./p(9).^2);
sum(y)


