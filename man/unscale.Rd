% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unscale.R
\name{unscale}
\alias{unscale}
\title{unscale}
\usage{
unscale(x)
}
\arguments{
\item{x}{A numeric matrix.}
}
\value{
Return a matrix, uncenterd and unscaled. Attributes "scaled:center" and
"scaled:scale" are removed.
}
\description{
\code{unscale} is a generic function that unscale and/or uncenter the columns
of a matrix generated by the scale base function
}
\details{
\code{unscale} uses attributes added by the scale function "scaled:scale" and
"scaled:center" and use these scaling factor to retrieve the initial matrix.
It first unscales and then uncenters.
}
\examples{
X <- matrix(1:9, ncol = 3)
X.scale <- scale(X, center = TRUE, scale = TRUE)
X.unscale <- unscale(X.scale)
all(X == X.unscale)

}
\seealso{
\code{\link[base]{scale}}
}
