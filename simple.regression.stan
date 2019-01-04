
    data{
    int<lower=1> N;
    vector[N] x; 
    vector[N] y; 
    }
    parameters{
    real a;
    real b;
    real<lower=0> sigma;
    }
    model{ 
        vector[N] y_hat;
        y_hat=a+b*x; 
        # Likelihood   
        y~normal(y_hat,sigma);
        # Prior 
        a~normal(0,5);
        b~uniform(0,10); 
        sigma~uniform(0,30);
        }
