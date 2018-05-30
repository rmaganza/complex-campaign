library(unbalanced)

oversample <- function(X, Y) {
  over <- ubOver(X, Y)
  cbind(over$Y, over$X)
}

undersample <- function(X,Y) {
  under <- ubUnder(X, Y)
  cbind(under$Y, under$X)
}
