# heart

data = read.table("http://www-stat.stanford.edu/~tibs/ElemStatLearn/datasets/SAheart.data",
           sep=",",head=T,row.names=1)

heart = list(
  xL = data[data$famhist=="Absent", -c(5, 1)],
  yL = sqrt(data[data$famhist=="Absent", 1]),
  xU = data[data$famhist=="Present", -c(5, 1)],
  yU = sqrt(data[data$famhist=="Present", 1])
)

promptData(heart, "man/data_heart.Rd")
usethis::use_data(heart)
