\name{epi.convgrid}

\alias{epi.convgrid}

\title{Convert British National Grid georeferences to easting and northing coordinates}

\description{
Convert British National Grid georeferences to Brtish National Grid (EPSG 27700) easting and northing coordinates.
}

\usage{
epi.convgrid(osref)
}

\arguments{
  \item{osref}{a vector of character strings listing the British National Grid georeferences to be converted.}
}

\note{
If an invalid georeference is encountered in the vector \code{os.ref} the method returns a \code{NA}. 
}

\examples{
## EXAMPLE 1:
os.ref <- c("SJ505585","SJ488573","SJ652636")
epi.convgrid(os.ref)

os.ref <- c("SJ505585","SJ488573","ZZ123456")
epi.convgrid(os.ref)


}
\keyword{univar}% at least one, from doc/KEYWORDS
\keyword{univar}% __ONLY ONE__ keyword per line
