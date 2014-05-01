#' function to load package, or download packge if not currently installed
#'
#' This function loads a package with library() if installed, or downloads it from the Rstudio mirror if not
#' @param package name of package as a character string
#' @param mirror Default is Rstudio cloud mirror
#' @keywords library require install package
#' @export
#' @examples
#' loadR("devtools")

loadR <- function(package, mirror = "http://cran.rstudio.com") {
  stopifnot(is.character(package))
  stopifnot(is.character(mirror))
  if (!package %in% row.names(installed.packages())) install.packages(package, repos= c(CRAN = mirror), depend=TRUE)
  library(package, character.only = TRUE)
}