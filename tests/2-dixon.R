#' test Dixon

library(devtools)
load_all(".")

x <- get( data("lansing") )

y <- x[ x$marks %in% c("hickory", "maple"), drop=T ]

y$marks <- droplevels(y$marks)

d <- dixon(y)
