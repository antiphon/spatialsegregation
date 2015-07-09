library(devtools)
load_all(".")

library(bciexplorer)

data("bciall.trees")

x <- bci90.trees

x2 <-bcisubsample(x, xlim = c(300,500), ylim=c(200,350))

x2$dbh[is.na(x2$dbh)] <- -1


y <- bcisubsample(x2, atleast=10, dbh = 1)

y$marks <- droplevels(y$marks)

y$mass <- y$dbh

z<-biomassF(y)

plot(z, legend=F)
