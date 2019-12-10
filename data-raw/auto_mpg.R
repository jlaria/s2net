readLines("auto-mpg.csv", 1)

data = read.csv("data-raw/auto-mpg.csv", header = F, sep = "\t", dec = ".")
data$V9 = NULL
colnames(data) = c(
  "mpg",
  "cylinders",
  "displacement",
  "horsepower",
  "weight",
  "acceleration",
  "year",
  "origin"
)

data$cylinders = factor(data$cylinders, ordered = T)
data$horsepower = as.numeric(data$horsepower)
data = na.omit(data)
data$origin = factor(data$origin)

auto_mpg_P1 = data
auto_mpg_P1$set = factor(ifelse(auto_mpg_P1$origin == 1, "U", "L"))
auto_mpg_P1$origin = NULL

auto_mpg_P2 = data
auto_mpg_P2$set = factor(ifelse(auto_mpg_P1$cylinders <= 4, "L", "U"))
auto_mpg_P2$cylinders = NULL

auto_mpg = list(
              P1 = list( xL = auto_mpg_P1[auto_mpg_P1$set == "L", -c(1,8)],
                         yL = auto_mpg_P1$mpg[auto_mpg_P1$set == "L"],
                         xU = auto_mpg_P1[auto_mpg_P1$set == "U", -c(1,8)],
                         yU = auto_mpg_P1$mpg[auto_mpg_P1$set == "U"]),
              P2 = list( xL = auto_mpg_P2[auto_mpg_P2$set == "L", -c(1,8)],
                         yL = auto_mpg_P2$mpg[auto_mpg_P2$set == "L"],
                         xU = auto_mpg_P2[auto_mpg_P2$set == "U", -c(1,8)],
                         yU = auto_mpg_P2$mpg[auto_mpg_P2$set == "U"])
                )


promptData(auto_mpg, "man/data_mpg.Rd")
usethis::use_data(auto_mpg)
save(auto_mpg, file = "data/auto_mpg.rdata", version = 2)
