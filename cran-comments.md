## Test environments
* local Debian GNU/Linux bullseye install, R 3.6.1
* win-builder (devel, release and old-release)

## R CMD check results

### (local)

There were no ERRORs or WARNINGs, 2 NOTEs.

* checking CRAN incoming feasibility ... NOTE
Maintainer: ‘Juan C. Laria <juank.laria@gmail.com>’

New submission

* checking installed package size ... NOTE
  installed size is  5.0Mb
  sub-directories of 1Mb or more:
    libs   4.7Mb

This note only appears when compiling with g++ in Linux. I believe it is related to Rcpp modules and g++, because `Rcpp::Rcpp.package.skeleton(module=T)` produces the same note.

### win-builder

There were no ERRORs or WARNINGs, 1 NOTE.

* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Juan C. Laria <juank.laria@gmail.com>'

New submission
