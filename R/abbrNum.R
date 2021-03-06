abbrNum <- function(xx) {
  x <- unique(xx)
  l <- format.info(x)
  if (length(l) == 1) {
    lab <- x
  } else if (l[2] > 0) {
    digits <- max(ceiling(-log10(sd(x))) + 1, 0)
    lab <- formatC(x, digits=digits, format="f")
  } else {
    lab <- x
  }
  lab
}
