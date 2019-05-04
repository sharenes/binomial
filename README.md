# binomial

# Overview

`"binomial"` is an R package that implements functions for
calculating probabilities of a Binomial random variable, and related calculations such as the probability distribution, the expected value, variance, etc.

* `bin_choose()` calculates the number of combinations in which k successes can occur in n trials.
* `bin_probility()` calculates the probability of getting k successes in n trials
* `bin_distribution` returns a data frame with the probability distribution, then graphs a barplot to display the probability histogram 
* `bin_cumulative()` returns a data frame with both the probability distribution and the cumulative probabilities, then graphs the cumulative distribution
* `bin_variable()` return an object of class "binvar", then nicely print the content of an object "binvar", then a full summary description of an object "binvar"


## Motivation

This package has been developed to detail the binomial distribution

## Installation

Install the development version from GitHub via the package `"devtools"`:

```r
# development version from GitHub:
#install.packages("devtools") 
# install "binomial" (without vignettes)
devtools::install_github("sharene/binomial")
# install "binomial" (with vignettes)
devtools::install_github("sharene/binomial", build_vignettes = TRUE)
```


## Usage

```{r}
library(binomial)

# calculates the number of combinations in which 2 successes can occur in 5 trials.
bin_choose(n = 5, k = 2)

# probability of getting 2 successes in 5 trials
# (assuming prob of success = 0.5)
bin_probability(success = 2, trials = 5, prob = 0.5)

# binomial probability distribution
bin_distribution(trials = 5, prob = 0.5)

# plotting binomial probability distribution
dis1 <- bin_distribution(trials = 5, prob = 0.5)
plot(dis1)

# binomial cumulative distribution
bin_cumulative(trials = 5, prob = 0.5)

# plotting binomial cumulative distribution
dis2 <- bin_cumulative(trials = 5, prob = 0.5)
plot(dis2)

# content of object binvar
bin1 <- bin_variable(trials = 10, p = 0.3)
bin1

# print the contents of an object "summary.binvar",
bin1 <- bin_variable(trials = 10, p = 0.3)
binsum1 <- summary(bin1)
binsum1
