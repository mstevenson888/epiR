# epiR <img src='man/figures/logo.png' align="right" height="139" />

[![downloads](http://cranlogs.r-pkg.org/badges/epiR)](https://cran.r-project.org/package=epiR)
[![total](https://cranlogs.r-pkg.org/badges/grand-total/epiR)](https://cranlogs.r-pkg.org/)
[![status](https://tinyverse.netlify.com/badge/epiR)](https://CRAN.R-project.org/package=epiR)

epiR is a general purpose package of tools for the quantitative epidemiologist.

## Installation

[![CRAN](http://www.r-pkg.org/badges/version/epiR)](https://cran.r-project.org/package=epiR)
[![R
check](https://github.com/easystats/performance/workflows/R-CMD-check/badge.svg?branch=main)](https://github.com/easystats/epiR/actions)


| Type        | Source     | Command                                                                |
|-------------|------------|------------------------------------------------------------------------|
| Release     | CRAN       | `install.packages("epiR")`                                             |


The tables below provide a summary of the main functions and data sets in the package. An alphabetical list of all functions and datasets is available by typing \code`library(help = epiR)` in the R console.

For further information on any of these functions, type `help(name)` or `?name` where `name` is the name of the function or dataset.

For details on how to use `epiR` for routine epidemiological work start R, type `help.start()` to open the help browser and navigate to `Packages > epiR > Vignettes`.

## Contents

The functions in \pkg{epiR} can be categorised into two main groups: Tools for epidemiolological analysis and tools for the analysis and assessment of surveillance data. A summary of the package functions is as follows:

### I. EPIDEMIOLOGY

1. Descriptive statistics

| Function name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.conf`           | Confidence intervals.                                                                      |
| `epi.descriptives`   | Descriptive statistics.                                                                    |


2. Measures of health and measures of association

| Function name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.directadj`      | Directly adjusted incidence rate estimates.                                                |
| `epi.edr`            | Compute estimated dissemination ratios from outbreak event data.                           |
| `epi.empbayes`       | Empirical Bayes estimates of observed event counts.                                        |
| `epi.indirectadj`    | Indirectly adjusted incidence risk estimates.                                              |
| `epi.insthaz`        | Instantaneous hazard estimates based on Kaplan-Meier survival estimates.                   |
| `epi.2by2`           |  Measures of association from data presented in a 2 by 2 table.                            |


3. Diagnostic tests

| Function name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.betabuster`     | An R version of Wes Johnson and Chun-Lung Su's Betabuster.                                 |
| `epi.herdtest`       | Estimate the characteristics of diagnostic tests applied at the herd (group) level.        |
| `epi.nomogram`       | Compute the post-test probability of disease given characteristics of a diagnostic test.   |
| `epi.pooled`         | Estimate herd test characteristics when samples are pooled.                                |
| `epi.prev`           | Compute the true prevalence of a disease in a population on the basis of an imperfect test.|
| `epi.tests`          | Sensitivity, specificity and predictive value of a diagnostic test.                        |


4. Meta-analysis

| Function name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.dsl`            | Mixed-effects meta-analysis of binary outcome data using the DerSimonian and Laird method. |
| `epi.iv`             | Fixed-effects meta-analysis of binary outcome data using the inverse variance method.      |
| `epi.mh`             | Fixed-effects meta-analysis of binary outcome data using the Mantel-Haenszel method.       |
| `epi.smd`            | Fixed-effects meta-analysis of continuous outcome data using the standardised mean difference method.|


5. Regression analysis tools

| Function name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.cp`             | Extract unique covariate patterns from a data set.                                         |
| `epi.cpresids`       | Compute covariate pattern residuals from a logistic regression model.                      |
| `epi.interaction`    | Relative excess risk due to interaction in a case-control study.                           |


6. Data manipulation tools

| Function name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.asc`            | Write a matrix to an ASCII raster file.                                                    |
| `epi.convgrid`       | Convert British National Grid georeferences to easting and northing coordinates.           |
| `epi.dms`            | Convert decimal degrees to degrees, minutes and seconds and vice versa.                    |
| `epi.ltd`            | Calculate lactation to date and standard lactation (that is, 305 or 270 day) milk yields.  |
| `epi.offset`         | Create an offset vector based on a list suitable for WinBUGS.                              |
| `epi.RtoBUGS`        | Write data from an R list to a text file in WinBUGS-compatible format.                     |


7. Sample size calculations

The naming convention for the sample size functions in `epiR` is: `epi.ss` (sample size) + an abbreviation to represent the sampling design (e.g., `simple`, `strata`, `clus1`, `clus2`) + an abbreviation of the objectives of the study (`est` when you want to estimate a population parameter or `comp` when you want to compare two groups) + a single letter defining the outcome variable type (`b` for binary, `c` for continuous and `s` for survival [time to event] data).

| Function name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.sssimpleestb`   | Sample size to estimate a binary outcome using simple random sampling.                     |
| `epi.sssimpleestc`   | Sample size to estimate a continuous outcome using simple random sampling.                 |

| `epi.ssstrataestb`   | Sample size to estimate a binary outcome using stratified random sampling.                 |
| `epi.ssstrataestc`   | Sample size to estimate a continuous outcome using stratified random sampling.             |

| `epi.ssclus1estb`    | Sample size to estimate a binary outcome using one-stage cluster sampling.                 |
| `epi.ssclus1estc`    | Sample size to estimate a continuous outcome using one-stage cluster sampling.             |

| `epi.ssclus2estb`    | Sample size to estimate a binary outcome using two-stage cluster sampling.                 |
| `epi.ssclus2estc`    | Sample size to estimate a continuous outcome using two-stage cluster sampling.             |

| `epi.ssxsectn`       | Sample size, power or detectable prevalence ratio for a cross-sectional study.             |
| `epi.sscohortc`      | Sample size, power or detectable risk ratio for a cohort study using count data.           |
| `epi.sscohortt`      | Sample size, power or detectable risk ratio for a cohort study using time at risk data.    |
| `epi.sscc`           | Sample size, power or detectable odds ratio for case-control studies.                      |

| `epi.sscompb`        | Sample size, power and detectable risk ratio when comparing binary outcomes.               |
| `epi.sscompc`        | Sample size, power and detectable risk ratio when comparing continuous outcomes.           |
| `epi.sscomps`        | Sample size, power and detectable hazard when comparing time to event.                     |

| `epi.ssequb`         | Sample size for a parallel equivalence or equality trial, binary outcome.                  |
| `epi.ssequc`         | Sample size for a parallel equivalence or equality trial, continuous outcome.              |

| `epi.sssupb`         | Sample size for a parallel superiority trial, binary outcome.                              |
| `epi.sssupc`         | Sample size for a parallel superiority trial, continuous outcome.                          |
 
| `epi.ssninfb`        | Sample size for a parallel non-inferiority trial, binary outcome.                          |
| `epi.ssninfc`        | Sample size for a parallel non-inferiority trial, continuous outcome.                      |

| `epi.ssdetect`       | Sample size to detect an event.                                                            |
| `epi.ssdxsesp`       | Sample size to estimate the sensitivity or specificity of a diagnostic test.               |
| `epi.ssdxtest`       | Sample size to validate a diagnostic test in the absence of a gold standard.               |

8. Miscellaneous functions

| Function name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.prcc`           | Compute partial rank correlation coefficients.                                             |
| `epi.psi`            | Compute proportional similarity indices.                                                   |
| `epi.realrisk`       | Return absolute risks from odds, incidence risk and hazard ratios.                         |

9. Data sets

| Data set name        | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.epidural`       | Rates of use of epidural anaesthesia in trials of caregiver support.                       |
| `epi.incin`          | Laryngeal and lung cancer cases in Lancashire 1974 - 1983.                                 |
| `epi.SClip`          | Lip cancer in Scotland 1975 - 1980.                         |


\section{II. SURVEILLANCE}{

Below, SSe stands for surveillance system sensitivity. That is, the average probability that a surveillance system (as a whole) will return a positive surveillance outcome, given disease is present in the population at a level equal to or greater than a specified design prevalence.

\subsection{1. Representative sampling --- sample size}{

\tabular{ll}{
    \code{\link{rsu.sspfree.rs}}           \tab  Defined probability of disease freedom.\cr
    \code{\link{rsu.sssep.rs}}             \tab  SSe, perfect test specificity. \cr    
    \code{\link{rsu.sssep.rs2st}}          \tab  SSe, two stage sampling. \cr
    \code{\link{rsu.sssep.rsfreecalc}}     \tab  SSe, imperfect test specificity. \cr
    \code{\link{rsu.sssep.rspool}}         \tab  SSe, pooled sampling. \cr 
 }
}
  
\subsection{2. Representative sampling --- surveillance system sensitivity and specificity}{

\tabular{ll}{
    \code{\link{rsu.sep.rs}}             \tab  SSe, representative sampling. \cr
    \code{\link{rsu.sep.rs2st}}          \tab  SSe, representative two-stage sampling. \cr
    \code{\link{rsu.sep.rsmult}}         \tab  SSe, representative multiple surveillance components. \cr
    \code{\link{rsu.sep.rsfreecalc}}     \tab  SSe, imperfect test specificity. \cr
    \code{\link{rsu.sep.rspool}}         \tab  SSe, representative pooled sampling. \cr
    \code{\link{rsu.sep.rsvarse}}        \tab  SSe, varying surveillance unit sensitivity. \cr
    \code{\link{rsu.spp.rs}}             \tab  Surveillance system specificity. \cr
  }
}  

\subsection{3. Representative sampling --- probability of disease freedom}{

\tabular{ll}{
    \code{\link{rsu.pfree.rs}}            \tab  Probability of disease freedom for a single or multiple time periods. \cr
    \code{\link{rsu.pfree.equ}}           \tab  Equilibrium probability of disease freedom. \cr
  }
}  

\subsection{4. Risk-based sampling --- sample size}{

\tabular{ll}{
    \code{\link{rsu.sssep.rbsrg}}            \tab  SSe, single sensitivity for each risk group. \cr
    \code{\link{rsu.sssep.rbmrg}}            \tab  SSe, multiple sensitivities within risk groups. \cr
    \code{\link{rsu.sssep.rb2st1rf}}         \tab  SSe, 2 stage sampling, 1 risk factor. \cr
    \code{\link{rsu.sssep.rb2st2rf}}         \tab  SSe, 2 stage sampling, 2 risk factors. \cr
  }
} 

\subsection{5. Risk-based sampling --- surveillance system sensitivity and specificity}{

\tabular{ll}{
    \code{\link{rsu.sep.rb}}                 \tab  SSe, risk-based sampling. \cr
    \code{\link{rsu.sep.rb1rf}}              \tab  SSe, risk-based sampling, 1 risk factor. \cr
    \code{\link{rsu.sep.rb2rf}}              \tab  SSe, risk-based sampling, 2 risk factors. \cr
    \code{\link{rsu.sep.rbvarse}}            \tab  SSe, risk-based sampling, varying unit sensitivity. \cr
    \code{\link{rsu.sep.rb2st}}              \tab  SSe, 2-stage risk-based sampling. \cr
  }
} 

\subsection{6. Risk-based sampling --- probability of disease freedom}{

\tabular{ll}{
    \code{\link{rsu.pfree.equ}}           \tab  Equilibrium probability of disease freedom. \cr
  }
}  

\subsection{7. Census sampling --- surveillance system sensitivity}{

\tabular{ll}{
    \code{\link{rsu.sep.cens}}                \tab  SSe, census sampling. \cr
  }
} 

\subsection{8. Passive surveillance --- surveillance system sensitivity}{

\tabular{ll}{
    \code{\link{rsu.sep.pass}}                 \tab  SSe, passive surveillance. \cr
  }
} 

\subsection{9. Miscellaneous functions}{

\tabular{ll}{
    \code{\link{rsu.adjrisk}}              \tab  Adjusted risk values. \cr
    \code{\link{rsu.dxtest}}               \tab  Series and parallel diagnostic test interpretation. \cr
    \code{\link{rsu.epinf}}                \tab  Effective probability of disease. \cr
    \code{\link{rsu.pstar}}                \tab  Design prevalence back calculation. \cr
    \code{\link{rsu.sep}}                  \tab  Probability disease is less than specified design prevalence. \cr
  }
 } 
}


Once you have downloaded the package, you can then load it using:

``` r
library("epiR")
```

> **Tip**
>
> Instead of `library(performance)`, use `library(easystats)`. This will
> make all features of the easystats-ecosystem available.
>
> To stay updated, use `easystats::install_latest()`.

## Citation

To cite performance in publications use:

``` r
citation("performance")
#> To cite package 'performance' in publications use:
#> 
#>   Lüdecke et al., (2021). performance: An R Package for Assessment, Comparison and
#>   Testing of Statistical Models. Journal of Open Source Software, 6(60), 3139.
#>   https://doi.org/10.21105/joss.03139
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Article{,
#>     title = {{performance}: An {R} Package for Assessment, Comparison and Testing of Statistical Models},
#>     author = {Daniel Lüdecke and Mattan S. Ben-Shachar and Indrajeet Patil and Philip Waggoner and Dominique Makowski},
#>     year = {2021},
#>     journal = {Journal of Open Source Software},
#>     volume = {6},
#>     number = {60},
#>     pages = {3139},
#>     doi = {10.21105/joss.03139},
#>   }
```


</div>
</div>
