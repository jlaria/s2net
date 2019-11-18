#install.packages("seedCCA")
library(seedCCA)
data("cookie")
colnames(cookie)[701:704] = c("fat", "sucrose", "dry flour", "water")

train.idx = 1:40

cookie = list(
  xL = cookie[train.idx, -704],
  yL = cookie$water[train.idx],
  xU = cookie[-train.idx, -704],
  yU = cookie$water[-train.idx]
)

promptData(cookie, "man/data_cookie.Rd")
usethis::use_data(cookie, overwrite = T)
