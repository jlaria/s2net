# Parameters


nExtParams <- function(lambda1,
                       lambda2 = 0,
                       gamma1 = 0,
                       gamma2 = 0,
                       gamma3 = 0){
  nExtP = c(
    lambda1 = lambda1,
    lambda2 = lambda2,
    gamma1 = gamma1,
    gamma2 = gamma2,
    gamma3 = gamma3
  )
  class(nExtP) = "nExtParams"
  return(nExtP)
}

nExtFista <- function(MAX_ITER_INNER = 5000, TOL = 1e-7, t0 = 2, step = 0.1, use_warmstart = FALSE){
  nExtF = list(
    MAX_ITER_INNER = MAX_ITER_INNER,
    TOL = TOL,
    t0 = t0,
    step = step,
    use_warmstart = use_warmstart
  )
  class(nExtF) = "nExtFista"
  return(nExtF)
}

print.nExtFista <- function(x, ...){
  print(unlist(x))
}

