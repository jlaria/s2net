
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nExtJT <img src="man/figures/nExtJT.png" align="right" width="200" />

## Overview

R package `nExtJT`

  - Our method extends the supervised elastic-net problem, and thus it
    is an ideal solution to the problem of feature selection in
    semi-supervised contexts.
  - Its mathematical formulation is presented from a general
    perspective, covering a wide range of models.
  - We develop a flexible and fast implementation for `nExtJT` in `R`,
    written in `C++` using `RcppArmadillo` and integrated into `R` via
    `Rcpp` modules.

## Installation

You can install the released version of `nExtJT` from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("nExtJT")
```

The development version can be installed with:

``` r
devtools::install_github("jlaria/nExtJT")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
