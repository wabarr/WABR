\name{loadR}
\alias{loadR}
\title{function to load package, or download packge if not currently installed}
\usage{
loadR(package, mirror = "http://cran.rstudio.com")
}
\arguments{
  \item{mirror}{Default is Rstudio clout mirror}
}
\description{
This function loads a package with library() if installed,
or downloads it from the Rstudio mirror if not
}
\examples{
loadR()
}
\keyword{install}
\keyword{library}
\keyword{package}
\keyword{require}

