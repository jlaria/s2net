loadModule("Rcpp_nExtJT_export", TRUE)

setClass("Rcpp_nExtJT")
setMethod("predict", signature("Rcpp_nExtJT"), predict_Rcpp_nExtJT)

