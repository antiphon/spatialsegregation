# test basics
devtools::load_all(".")
library(spatstat)
data(lansing, package = "spatstat.data")
x <- lansing
e <- minglingF(x, dbg = TRUE)
plot(e)