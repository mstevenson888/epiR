\name{epi.directadj}

\alias{epi.directadj}

\title{Directly adjusted incidence rate estimates}

\description{
Compute directly adjusted incidence rate estimates.}

\usage{
epi.directadj(obs, tar, std, units = 1, conf.level = 0.95)
}

\arguments{
  \item{obs}{a matrix providing counts of the observed number of events. Rows represent strata (e.g., region); columns represent the different levels of the variable to be adjusted for (e.g., age class) --- the covariate. The sum of each row will equal the total number of observed events for each stratum. The row names of matrix \code{obs} are the appropriate strata names. The column names of \code{obs} are the appropriate level identifiers for the adjustment covariate. See the examples, below.}

  \item{tar}{a matrix representing population time at risk. Rows represent strata (e.g., region); columns represent the different levels of the variable to be adjusted for (e.g., age class) --- the covariate. The sum of each row will equal the total population time at risk for each stratum. The row names of matrix \code{pop} must be the same as the row names used for matrix \code{obs}. The column names of matrix \code{pop} must be the same as the column names used for matrix \code{pop}. See the examples, below.}

  \item{std}{a matrix representing the standard population size for the different levels of the covariate to be adjusted for. The column names of matrix \code{std} must be the same as the column names used for matrices \code{obs} and \code{pop}.}

  \item{units}{multiplier for the incidence rate estimates.}

  \item{conf.level}{magnitude of the returned confidence interval. Must be a single number between 0 and 1.}
}

\details{
This function returns unadjusted (crude) and directly adjusted incidence rate estimates for each of the specified population strata. The term `covariate' is used here to refer to the factors we want to control (i.e., adjust) for when calculating the directly adjusted incidence rate estimates.

When the outcome of interest is rare, the confidence intervals for the adjusted incidence rates returned by this function (based on Fay and Feuer, 1997) will be appropriate for incidence risk data. In this situation the argument \code{tar} is assumed to represent the size of the population at risk (instead of population time at risk). Example 3 (below) provides an approach if you are working with incidence risk data and the outcome of interest is not rare.
} 

\value{
A list containing the following:
  \item{crude}{the crude incidence rate estimates for each stratum-covariate combination.}
  \item{crude.strata}{the crude incidence rate estimates for each stratum.}
  \item{adj.strata}{the directly adjusted incidence rate estimates for each stratum.}
}

\references{
Fay M, Feuer E (1997). Confidence intervals for directly standardized rates: A method based on the gamma distribution. Statistics in Medicine 16: 791 - 801.

Fleiss JL (1981). Statistical Methods for Rates and Proportions, Wiley, New York, USA, pp. 240.

Frome E, Checkoway H (1985). Use of Poisson regression models in estimating incidence rates and ratios. American Journal of Epidemiology 121: 309 - 323.

Haneuse S, Rothman KJ. Stratification and Standardization. In: Lash TL, VanderWeele TJ, Haneuse S, Rothman KJ (2021). Modern Epidemiology. Lippincott - Raven Philadelphia, USA, pp. 415 - 445.

Thrusfield M (2007). Veterinary Epidemiology, Blackwell Publishing, London, UK, pp. 63 - 64.

Wilcosky T, Chambless L (1985). A comparison of direct adjustment and regression adjustment of epidemiologic measures. Journal of Chronic Diseases 38: 849 - 956.
}

\author{
Thanks to Karl Ove Hufthammer for helpful suggestions to improve the execution and documentation of this function. 
}

\seealso{
\code{\link{epi.indirectadj}}
}

\examples{
## EXAMPLE 1 (from Thrusfield 2007 pp. 63 - 64):
## A study was conducted to estimate the seroprevalence of leptospirosis in 
## dogs in Glasgow and Edinburgh, Scotland. Data frame dat.df lists counts 
## of leptospirosis cases and the number of dog years at risk for male and 
## female dogs. In this example we stratify the data by city and the covariate 
## is gender (with levels male and female). The data are presented as a matrix
## with two rows and two columns with city (Edinburgh, Glasgow) as the row 
## names and levels of gender (male, female) as column names: 

dat.df01 <- data.frame(obs = c(15,46,53,16), tar = c(48,212,180,71), 
   sex = c("M","F","M","F"), city = c("ED","ED","GL","GL"))

obs01 <- matrix(dat.df01$obs, nrow = 2, byrow = TRUE, 
   dimnames = list(c("ED","GL"), c("M","F")))
tar01 <- matrix(dat.df01$tar, nrow = 2, byrow = TRUE, 
   dimnames = list(c("ED","GL"), c("M","F")))

## Create a standard population with equal numbers of male and female dogs:

std01 <- matrix(data = c(250,250), nrow = 1, byrow = TRUE, 
   dimnames = list("", c("M","F")))

## Directly adjusted incidence rates:
epi.directadj(obs01, tar01, std01, units = 1, conf.level = 0.95)

## $crude
##  strata cov obs tar       est     lower     upper
##      ED   M  15  48 0.3125000 0.1749039 0.5154212
##      GL   M  53 180 0.2944444 0.2205591 0.3851406
##      ED   F  46 212 0.2169811 0.1588575 0.2894224
##      GL   F  16  71 0.2253521 0.1288082 0.3659577

## $crude.strata
##  strata obs tar       est     lower     upper
##      ED  61 260 0.2346154 0.1794622 0.3013733
##      GL  69 251 0.2749004 0.2138889 0.3479040

## $adj.strata
##  strata obs tar       est     lower     upper
##      ED  61 260 0.2647406 0.1866047 0.3692766
##      GL  69 251 0.2598983 0.1964162 0.3406224

## The adjusted incidence rate of leptospirosis in Glasgow dogs is 26 (95\%
## CI 20 to 34) cases per 100 dog-years at risk. The confounding effect of 
## gender has been removed by the adjusted incidence rate estimates.


## EXAMPLE 2:
## Here we provide a more flexible approach for calculating 
## adjusted incidence rate estimates using Poisson regression. See Frome and 
## Checkoway (1985) for details.

dat.glm02 <- glm(obs ~ city, offset = log(tar), family = poisson, 
   data = dat.df01)
summary(dat.glm02)

## To obtain adjusted incidence rate estimates, use the predict method on a 
## new data set with the time at risk (tar) variable set to 1 (which means 
## log(tar) = 0). This will return the predicted number of cases per one unit 
## of individual time, i.e., the incidence rate.

dat.pred02 <- predict(object = dat.glm02, newdata = 
   data.frame(city = c("ED","GL"), tar = c(1,1)), 
   type  = "link", se = TRUE)

conf.level <- 0.95
critval <- qnorm(p = 1 - ((1 - conf.level) / 2), mean = 0, sd = 1)
est <- dat.glm02$family$linkinv(dat.pred02$fit)
lower <- dat.glm02$family$linkinv(dat.pred02$fit - 
   (critval * dat.pred02$se.fit))
upper <- dat.glm02$family$linkinv(dat.pred02$fit + 
   (critval * dat.pred02$se.fit))
round(x = data.frame(est, lower, upper), digits = 3)

##   est lower upper
## 0.235 0.183 0.302
## 0.275 0.217 0.348

## Results identical to the crude incidence rate estimates from epi.directadj.


## EXAMPLE 3:
## Now adjust for the effect of gender and city and report the adjusted 
## incidence rate estimates for each city:

dat.glm03 <- glm(obs ~ city + sex, offset = log(tar), 
   family = poisson, data = dat.df01)
dat.pred03 <- predict(object = dat.glm03, newdata = 
   data.frame(sex = c("F","F"), city = c("ED","GL"), tar = c(1,1)), 
   type  = "link", se.fit = TRUE)

conf.level <- 0.95
critval <- qnorm(p = 1 - ((1 - conf.level) / 2), mean = 0, sd = 1)
est <- dat.glm03$family$linkinv(dat.pred03$fit)
lower <- dat.glm03$family$linkinv(dat.pred03$fit - 
   (critval * dat.pred03$se.fit))
upper <- dat.glm03$family$linkinv(dat.pred03$fit + 
   (critval * dat.pred03$se.fit))
round(x = data.frame(est, lower, upper), digits = 3)

##   est lower upper
## 0.220 0.168 0.287
## 0.217 0.146 0.323

## Using Poisson regression the gender adjusted incidence rate of leptospirosis 
## in Glasgow dogs was 22 (95\% CI 15 to 32) cases per 100 dog-years at risk.
## These results won't be the same as those using direct adjustment because
## for direct adjustment we use a contrived standard population.


## EXAMPLE 4 --- Logistic regression to return adjusted incidence risk 
## estimates:

## Say, for argument's sake, that we are now working with incidence risk data. 
## Here we'll re-label the variable 'tar' (time at risk) as 'pop' 
## (population size). We adjust for the effect of gender and city and 
## report the adjusted incidence risk of canine leptospirosis estimates for 
## each city:

dat.df01$pop <- dat.df01$tar

dat.glm04 <- glm(cbind(obs, pop - obs) ~ city + sex, 
   family = "binomial", data = dat.df01)
dat.pred04 <- predict(object = dat.glm04, newdata = 
   data.frame(sex = c("F","F"), city = c("ED","GL")), 
   type  = "link", se.fit = TRUE)

conf.level <- 0.95
critval <- qnorm(p = 1 - ((1 - conf.level) / 2), mean = 0, sd = 1)
est <- dat.glm04$family$linkinv(dat.pred04$fit)
lower <- dat.glm04$family$linkinv(dat.pred04$fit - 
   (critval * dat.pred04$se.fit))
upper <- dat.glm04$family$linkinv(dat.pred04$fit + 
   (critval * dat.pred04$se.fit))
round(x = data.frame(est, lower, upper), digits = 3)

##   est lower upper
## 0.220 0.172 0.276
## 0.217 0.150 0.304

## The adjusted incidence risk of leptospirosis in Glasgow dogs is 22 (95\%
## CI 15 to 30) cases per 100 dogs at risk.

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{univar}
\keyword{univar}% __ONLY ONE__ keyword per line
