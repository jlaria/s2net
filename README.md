
<!-- README.md is generated from README.Rmd. Please edit that file -->

# s2net <img src="man/figures/s2net.png" align="right" width="200" />

## Overview

R package `s2net`

  - Our method extends the supervised elastic-net problem, and thus it
    is a practical solution to the problem of feature selection in
    semi-supervised contexts.
  - Its mathematical formulation is presented from a general
    perspective, covering a wide range of models.
  - We develop a flexible and fast implementation for `s2net` in `R`,
    written in `C++` using `RcppArmadillo` and integrated into `R` via
    `Rcpp` modules.

## Installation

You can install the released version of `s2net` from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("s2net")
```

The development version can be installed with:

``` r
devtools::install_github("jlaria/s2net")
```

<!-- ## Example -->

<!-- This is a basic example which shows you how to solve a common problem: -->

<!-- ```{r example} -->

<!-- ## basic example code -->

<!-- ``` -->

<!-- What is special about using `README.Rmd` instead of just `README.md`? You can include R chunks like so: -->

<!-- ```{r cars} -->

<!-- summary(cars) -->

<!-- ``` -->

<!-- You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. -->

<!-- You can also embed plots, for example: -->

<!-- ```{r pressure, echo = FALSE} -->

<!-- plot(pressure) -->

<!-- ``` -->

<!-- In that case, don't forget to commit and push the resulting figure files, so they display on GitHub! -->