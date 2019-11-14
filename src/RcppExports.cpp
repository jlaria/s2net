// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

// fit_dummy
arma::vec fit_dummy(const Rcpp::List& data, const arma::vec& params, int loss, int frame, int proj);
RcppExport SEXP _nExtJTRcpp_fit_dummy(SEXP dataSEXP, SEXP paramsSEXP, SEXP lossSEXP, SEXP frameSEXP, SEXP projSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const Rcpp::List& >::type data(dataSEXP);
    Rcpp::traits::input_parameter< const arma::vec& >::type params(paramsSEXP);
    Rcpp::traits::input_parameter< int >::type loss(lossSEXP);
    Rcpp::traits::input_parameter< int >::type frame(frameSEXP);
    Rcpp::traits::input_parameter< int >::type proj(projSEXP);
    rcpp_result_gen = Rcpp::wrap(fit_dummy(data, params, loss, frame, proj));
    return rcpp_result_gen;
END_RCPP
}

RcppExport SEXP _rcpp_module_boot_Rcpp_nExtJT_export();

static const R_CallMethodDef CallEntries[] = {
    {"_nExtJTRcpp_fit_dummy", (DL_FUNC) &_nExtJTRcpp_fit_dummy, 5},
    {"_rcpp_module_boot_Rcpp_nExtJT_export", (DL_FUNC) &_rcpp_module_boot_Rcpp_nExtJT_export, 0},
    {NULL, NULL, 0}
};

RcppExport void R_init_nExtJTRcpp(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}