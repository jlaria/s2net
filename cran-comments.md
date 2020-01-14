## Test environments
* local Debian GNU/Linux bullseye install, R 3.6.1

## R CMD check results

### (local)

checking installed package size ... NOTE
    installed size is  5.1Mb
    sub-directories of 1Mb or more:
      libs   4.7Mb

0 errors | 0 warnings | 1 note 

This note only appears when compiling with g++ in Linux. I believe it is related to Rcpp modules and g++, because `Rcpp::Rcpp.package.skeleton(module=T)` produces the same note.

### r-devel-linux-x86_64-fedora-clang

(BEFORE)
ERROR

In file included from nExtJT.cpp:4:
In file included from /data/gannet/ripley/R/test-clang/RcppArmadillo/include/RcppArmadillo.h:31:
In file included from /data/gannet/ripley/R/test-clang/RcppArmadillo/include/RcppArmadilloForward.h:26:
In file included from /data/gannet/ripley/R/test-clang/Rcpp/include/RcppCommon.h:168:
In file included from /data/gannet/ripley/R/test-clang/Rcpp/include/Rcpp/as.h:25:
/data/gannet/ripley/R/test-clang/Rcpp/include/Rcpp/internal/Exporter.h:31:30: error: reference member 't' binds to a temporary object whose lifetime would be shorter than the lifetime of the constructed object
                    Exporter( SEXP x ) : t(x){}
                    

This is fixed in the new version. Solution found [here](https://stackoverflow.com/questions/56004251/rcpp-module-error-with-a-constructor-taking-numericvector-as-parameter)

