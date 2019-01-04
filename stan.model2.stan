
    data{
    int<lower=1> N;
    vector[N] x1;
    vector[N] x2;
    vector[N] y; 
    }
    parameters{
    real theta0;
    real theta1;
    real theta2;
    real<lower=0> sigma;
    }
    model{ 
        vector[N] y_hat;
        y_hat = theta0 + theta1*x1 + theta2*x2; 
        y~normal(y_hat,sigma);
        theta0 ~ normal(-334.7,23.07);
        theta1 ~ normal(404.4,33.28);
        theta2 ~ normal(0.172,0.00433);
        sigma ~ gamma(100,1);
        }
