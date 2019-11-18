# simulated data

simulate_extra <- function(n = 100, p = 1000, shift = 10, scenario = "same", response = "linear", sigma2 = 2.5){
  xL = matrix(rnorm(n*p, 0, 0.4), ncol = p)
  
  switch (scenario,
          same = {
            beta_lucky = 5*c(rep(1, 5),rep(-1, 5), rep(0, p - 10))/sqrt(10)
            
            xU = matrix(rnorm(n*p, 0, 0.4), ncol = p)
            etaL = xL %*% beta_lucky
            etaU = xU %*% beta_lucky 
          },
          lucky = {
            beta_lucky = 5*c(rep(1, 5),rep(-1, 5), rep(0, p - 10))/sqrt(10)
            
            xU = matrix(rnorm(n*p, 0, 0.4), ncol = p)
            xU[,1:10] = xU[,1:10] + shift
            
            etaL = xL %*% beta_lucky
            etaU = xU %*% beta_lucky
          },
          unlucky = {
            beta_unlucky = 5*c(rep(1, 10), rep(0, p - 10))/sqrt(10)
            
            xU = matrix(rnorm(n*p, 0, 0.4), ncol = p)
            xU[,1:10] = xU[,1:10] + shift
            
            etaL = xL %*% beta_unlucky
            etaU = xU %*% beta_unlucky
          }
  )
  
  switch (response,
          linear = {
            yL = etaL +  rnorm(n, 0, sqrt(sigma2))
            yU = etaU +  rnorm(n, 0, sqrt(sigma2))
          },
          logit = {
            yL = as.factor(rbinom(n, 1, 1/(1 + exp(-etaL))))
            yU = as.factor(rbinom(n, 1, 1/(1 + exp(-etaU))))
          }
  )
  
  return(
    list(
      xL = xL,
      yL = yL,
      xU = xU,
      yU = yU
    )
  )
}

# prompt(simulate_extra, "man/simulate_extra.Rd")

# shootout_data = function(nL.train = 135, nU.train = 200, nU.valid = 20){
# 
#   data("shootout")
#   ids = unique(shootout$id)
#   
#   idx.L.train = sample(ids, nL.train)
#   ids = setdiff(ids, idx.L.train)
#   idx.U.train = sample(ids, nU.train)
#   ids = setdiff(ids, idx.U.train)
#   
#   idx.U.valid = sample(ids, nU.valid)
#   ids = setdiff(ids, idx.U.valid)
#   
#   mean.yL.train = mean(shootout$label[shootout$id %in% idx.L.train & shootout$instrument=="1"])
#   
#   data = list(
#     train = list(
#       xL = as.matrix(shootout[shootout$id %in% idx.L.train & shootout$instrument=="1", -(1:4)]),
#       yL = as.matrix(shootout$label[shootout$id %in% idx.L.train & shootout$instrument=="1"] - mean.yL.train),
#       xU = as.matrix(shootout[shootout$id %in% idx.U.train & shootout$instrument=="2", -(1:4)])
#     ),
#     valid = list(
#       xU = as.matrix(shootout[shootout$id %in% idx.U.valid & shootout$instrument=="2", -(1:4)]),
#       yU = as.matrix(shootout$label[shootout$id %in% idx.U.valid & shootout$instrument=="2"] - mean.yL.train)
#     ),
#     test = list(
#       xU = as.matrix(shootout[shootout$id %in% c(idx.U.train, ids) & shootout$instrument=="2", -(1:4)]),
#       yU = as.matrix(shootout$label[shootout$id %in% c(idx.U.train, ids) & shootout$instrument=="2"] - mean.yL.train)
#     )
#   )
#   return(data)
# }

# prompt(shootout_data, "man/shootout_data.Rd")
