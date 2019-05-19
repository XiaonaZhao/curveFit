function F = truncatedPower(x, y, n)

hh = 2*0.3^2;
t0 = randn(n, 1);
e = 0.1;
for o = 1:n*1000
    i = ceil(rand*n);
    ki = exp(-(x-x(i)).^2/hh);
    t = t0 - e*ki*(ki' *t0 -y(i));
    if norm(t - t0)<0.000001
        break
    end
    t0 = t;
end
K = exp(-(repmat(X.^2, 1, n)+repmat(x.^2', 1000, 1 ) - 2*X*x')/hh);
F = K*t;

figure('color','w');
plot(X, F, x, y)