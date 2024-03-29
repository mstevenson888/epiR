\name{epi.ssclus2estc}

\alias{epi.ssclus2estc}

\title{Number of clusters to be sampled to estimate a continuous outcome using two-stage cluster sampling
}

\description{
Number of clusters to be sampled to estimate a continuous outcome using two-stage cluster sampling.
}

\usage{
epi.ssclus2estc(N.psu, N.ssu, b, xbar, xsigma, epsilon, error = "relative", 
   rho, nfractional = FALSE, conf.level = 0.95)
}

\arguments{
  \item{N.psu}{scalar integer, the total number of primary sampling units eligible for inclusion in the study. If \code{N = NA} the eligible primary sampling unit population size is assumed to be infinite.}
  \item{N.ssu}{scalar integer, the total number of secondary sampling units eligible for inclusion in the study.}
  \item{b}{scalar integer or vector of length two, the number of individual listing units in each cluster to be sampled. See details, below.}
  \item{xbar}{scalar number, the expected mean of the continuous variable to be estimated.}
  \item{xsigma}{scalar number, the expected standard deviation of the continuous variable to be estimated.}
  \item{epsilon}{scalar number, the maximum difference between the estimate and the unknown population value expressed in absolute or relative terms.}
  \item{error}{character string. Options are \code{absolute} for absolute error and \code{relative} for relative error.}
  \item{rho}{scalar number, the intracluster correlation.}
  \item{nfractional}{logical, return fractional sample size.}
  \item{conf.level}{scalar number, the level of confidence in the computed result.}
}

\details{
In many situations it is common for sampling units to be aggregated into clusters. Typical examples include individuals within households, children within classes (within schools) and cows within herds. We use the term primary sampling unit (PSU) to refer to what gets sampled first (clusters) and secondary sampling unit (SSU) to refer to what gets sampled second (individual listing units within each cluster). In this documentation the terms primary sampling unit and cluster are used interchangeably. Similarly, the terms secondary sampling unit and individual listing units are used interchangeably.

\code{b} as a scalar integer represents the total number of individual listing units from each cluster to be sampled. If \code{b} is a vector of length two the first element represents the mean number of individual listing units to be sampled from each cluster and the second element represents the standard deviation of the number of individual listing units to be sampled from each cluster.

A finite population correction factor is applied to the sample size estimates when a value for \code{N} is provided.
}

\value{
A list containing the following: 
  \item{n.psu}{the total number of primary sampling units (clusters) to be sampled for the specified level of confidence and relative error.}
  \item{n.ssu}{the total number of secondary sampling units to be sampled for the specified level of confidence and relative error.}
  \item{DEF}{the design effect.}
  \item{rho}{the intracluster correlation, as entered by the user.}  
}

\references{
Levy PS, Lemeshow S (1999). Sampling of Populations Methods and Applications. Wiley Series in Probability and Statistics, London, pp. 292.

Machin D, Campbell MJ, Tan SB, Tan SH (2018). Sample Sizes for Clinical, Laboratory ad Epidemiological Studies, Fourth Edition. Wiley Blackwell, London, pp. 195 - 214.
}

\examples{
## EXAMPLE 1 (from Levy and Lemeshow p 292):
## We intend to conduct a survey of nurse practitioners to estimate the 
## average number of patients seen by each nurse. There are five health
## centres in the study area, each with three nurses. We intend to sample
## two nurses from each health centre. We would like to be 95\% confident
## that our estimate is within 30\% of the true population value. We expect 
## that the mean number of patients seen at the health centre level 
## is 84 (var 567) and the mean number of patients seen at the nurse 
## level is 28 (var 160). Previous studies report an intracluster 
## correlation for the number of patients seen per nurse to be 0.02. 
## How many health centres should be sampled?

epi.ssclus2estc(N.psu = 5, N.ssu = 15, b = 2, xbar = 28, xsigma = sqrt(160), 
   epsilon = 0.30, error = "relative", rho = 0.02, nfractional = FALSE, 
   conf.level = 0.95)

## A total of 3 health centres need to be sampled to meet the specifications 
## of this study. 

}

\keyword{univar}% at least one, from doc/KEYWORDS
\keyword{univar}% __ONLY ONE__ keyword per line
