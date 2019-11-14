# predict.Rcpp_nExtJT S4 method

predict_Rcpp_nExtJT <- function(object, newX, type = "default"){
  if(class(newX)=="nExtData"){
    # No need to pre-process
    newX = newX$xL
  }
  if(!is.matrix(newX)){
    stop("newX shoud be a matrix or nExtData containing xL")
  }
  switch (type,
    response = {code = 1},
    probs = {code = 2},
    class = {code = 3},
    {code = 0}
  )
  return(object$predict(newX, code))
}
