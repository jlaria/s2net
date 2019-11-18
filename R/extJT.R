nExtJTR <- function(data, params, loss = "default", frame = "ExtJT", proj = "auto", fista = NULL){
  
  switch (loss,
    logit = {type_loss = 1},
    linear = {type_loss = 0},
    {
      switch (data$type,
        regression = {type_loss = 0},
        classification = {type_loss = 1}
      )
    }
  )
  
  switch (frame,
    JT = {type_frame = 0},
    {type_frame = 1}
  )
  
  switch (proj,
    no = {type_proj = 0},
    yes = {type_proj = 1},
    {type_proj = 2}
  )
  
  if(!class(data)=="nExtData")stop("[data] must be a nExtData object")
  if(!class(params)=="nExtParams")stop("[params] must be a nExtParams object")
  
  obj = new(nExtJT, data, type_loss)
  
  if(class(fista)=="nExtFista")obj$setupFista(fista)
  
  obj$fit(params, type_frame, type_proj)
  
  ret = list(
    nExtData = data,
    nExtParams = params,
    nExtFista = fista,
    loss = loss,
    type_loss = type_loss,
    frame = frame,
    type_frame = type_frame,
    proj = proj,
    type_proj = type_proj,
    beta = obj$beta,
    intercept = obj$intercept
  )
  class(ret) = "nExtJTR"
  return(ret)
}

# predict_response_nExtJTR = function(object, newX){
#   return(newX %*% object$beta + object$intercept)
# }
# predict_probs_nExtJTR = function(object, newX){
#   eta = predict_response_nExtJTR(object, newX)
#   return(1/(1 + exp(-eta)))
# }
# predict_class_nExtJTR = function(object, newX){
#   return()
# }
predict.nExtJTR = function(object, newX, type = "default", ...){
  switch (type,
    reponse = {
      type_pred = 1
    },
    probs = {
      type_pred = 2
    },
    class = {
      type_pred = 3
    },
    {type_pred = 0}
  )
  
  obj = new(nExtJT, object$nExtData, object$type_loss)
  obj$beta = object$beta
  obj$intercept = object$intercept
  obj$predict(newX, type_pred)
}