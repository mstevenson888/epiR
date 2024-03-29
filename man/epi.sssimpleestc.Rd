\name{epi.sssimpleestc}

\alias{epi.sssimpleestc}

\title{
Sample size to estimate a continuous outcome using simple random sampling
}

\description{
Sample size to estimate a continuous outcome using simple random sampling.
}

\usage{
epi.sssimpleestc(N = NA, xbar, sigma, epsilon, error = "relative",
   nfractional = FALSE, conf.level = 0.95)
}

\arguments{
  \item{N}{scalar integer, the total number of individuals eligible for inclusion in the study. If \code{N = NA} the number of individuals eligible for inclusion is assumed to be infinite.}
  \item{xbar}{scalar number, the expected mean of the continuous variable to be estimated.}
  \item{sigma}{scalar number, the expected standard deviation of the continuous variable to be estimated.}
  \item{epsilon}{scalar number, the maximum difference between the estimate and the unknown population value expressed in absolute or relative terms.}
  \item{error}{character string. Options are \code{absolute} for absolute error and \code{relative} for relative error.}
  \item{nfractional}{logical, return fractional sample size.}  
  \item{conf.level}{scalar number, the level of confidence in the computed result.}
}

\details{
A finite population correction factor is applied to the sample size estimates when a value for \code{N} is provided.
}

\value{
Returns an integer defining the required sample size.
}

\references{
Levy PS, Lemeshow S (1999). Sampling of Populations Methods and Applications. Wiley Series in Probability and Statistics, London, pp. 70 - 75.

Scheaffer RL, Mendenhall W, Lyman Ott R (1996). Elementary Survey Sampling. Duxbury Press, New York, pp. 95.

Otte J, Gumm I (1997). Intra-cluster correlation coefficients of 20 infections calculated from the results of cluster-sample surveys. Preventive Veterinary Medicine 31: 147 - 150.
}

\note{
If \code{epsilon.r} equals the relative error the sample estimate should not differ in absolute value from the true unknown population parameter \code{d} by more than \code{epsilon.r * d}.
}

\examples{
## EXAMPLE 1:
## A city contains 20 neighbourhood health clinics and it is desired to take a 
## sample of clinics to estimate the total number of persons from all these 
## clinics who have been given, during the past 12 month period, prescriptions 
## for a recently approved antidepressant. If we assume that the average number 
## of people seen at these clinics is 1500 per year with the standard deviation 
## equal to 300, and that approximately 5\% of patients (regardless of clinic) 
## are given this drug, how many clinics need to be sampled to yield an estimate 
## that is within 20\% of the true population value?

pmean <- 1500 * 0.05; psigma <- (300 * 0.05)
epi.sssimpleestc(N = 20, xbar = pmean, sigma = psigma, epsilon = 0.20, 
   error = "relative", nfractional = FALSE, conf.level = 0.95)

## Four clinics need to be sampled to meet the requirements of the survey. 


## EXAMPLE 2:
## We want to estimate the mean bodyweight of deer on a farm. There are 278
## animals present. We anticipate the mean body weight to be around 200 kg
## and the standard deviation of body weight to be 30 kg. We would like to
## be 95\% certain that our estimate is within 10 kg of the true mean. How
## many deer should be sampled?

epi.sssimpleestc(N = 278, xbar = 200, sigma = 30, epsilon = 10, 
   error = "absolute", nfractional = FALSE, conf.level = 0.95)

## A total of 28 deer need to be sampled to meet the requirements of the survey.
}

\keyword{univar}% at least one, from doc/KEYWORDS
\keyword{univar}% __ONLY ONE__ keyword per line
