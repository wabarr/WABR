#' function to load package, or download packge if not currently installed
#'
#' This function loads a package with library() if installed, or downloads it from the Rstudio mirror if not
#' @param package name of package (don't use quotation marks)
#' @param mirror Default is Rstudio cloud mirror
#' @keywords library require install package
#' @export
#' @examples
#' loadR("devtools")

loadR <- function (package, mirror = "http://cran.rstudio.com") 
{
  stringPackage <- deparse(substitute(package))
  stopifnot(is.character(stringPackage))
  stopifnot(is.character(mirror))
  if (!stringPackage %in% row.names(installed.packages())) 
    install.packages(stringPackage, repos = c(CRAN = mirror), depend = TRUE)
  library(stringPackage, character.only = TRUE)
}