library(rstan)

# Getting started

# The Stan model as a string.

# Logistic Regression

#y =  1  alpha + beta * x + noise > 0
#  =  0  otherwise

# logistic function is
# F(x) = 1 / (1 + exp(-(alpha + beta * x)))

# Note that F(x) is interpreted as the probability of the dependent variable
# equaling a "success"

# then the odds are
# odds = exp(alpha + beta * x)

# think of the S-shaped sigmoidal curve, with x-axis
# giving the probability for success at any value of x.

model <- "
    data {
      int<lower=0> N;
      vector[N] x;
      int<lower=0,upper=1> y[N];
    }
    parameters {
      real alpha;
      real beta;
    }
    model {
      y ~ bernoulli_logit(alpha + beta * x);
    }
"


dat <- read.csv("data.csv")

data_list <- list(y = dat$y, x = dat$x, N = length(dat$y))

# Compiling and producing posterior samples from the model.
stan_samples <- stan(model_code = model, data = data_list)

png("stan_output_in_script.png")
plot(stan_samples)
dev.off()
