\name{apt}
\alias{apt}
\alias{apt.inv}
\title{Additive planar transform}
\description{
  Compute the additive planar  transform of a (dataset of)
  compositions and its inverse.
}
\usage{
          apt( x )
          apt.inv( z )
          }
\arguments{
  \item{x}{a composition or a matrix of compositions, not necessarily closed}
  \item{z}{the apt-transform of a composition or  a matrix of
    alr-transforms of compositions}
}
\value{
  \code{apt} gives the centered planar transform,
  \code{apt.inv} gives closed compositions with the given apt-transforms
  }
\details{
  The apt-transform maps a composition in the D-part real-simplex
  linearly to a D-1 dimensional euclidian vector. Although the
  transformation does not reach the whole \eqn{R^{D-1}}, resulting covariance
  matrices are typically of full rank.
  \cr 

  The data can then
  be analysed in this transformation by all classical multivariate
  analysis tools not relying on distances. See
  \code{\link{cpt}} and \code{\link{ipt}} for alternatives. The
  interpretation of the results is easy since the relation to the first
  D-1 original variables is preserved.\cr
    
  The additive planar transform is given by
  \deqn{ apt(x)_i := clo(x)_i, i=1,\ldots,D-1 }{
         apt(x)_i := clo(x)_i, i=1,\ldots,D-1}
}
\seealso{
  \code{\link{alr}},\code{\link{cpt}},\code{\link{ipt}}
}
\references{
}
\author{K.Gerald v.d. Boogaart \url{http://www.stat.boogaart.de}}
\examples{
(tmp <- apt(c(1,2,3)))
apt.inv(tmp)
apt.inv(tmp) - clo(c(1,2,3)) # 0
data(Hydrochem)
cdata <- Hydrochem[,6:19]
pairs(apt(cdata)) 
}
\keyword{multivariate}