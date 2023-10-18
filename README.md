# epiR <img src='man/figures/logo.png' align="right" height="139" />

[![downloads](http://cranlogs.r-pkg.org/badges/epiR)](https://cran.r-project.org/package=epiR)
[![total](https://cranlogs.r-pkg.org/badges/grand-total/epiR)](https://cranlogs.r-pkg.org/)
[![status](https://tinyverse.netlify.com/badge/epiR)](https://CRAN.R-project.org/package=epiR)

epiR is a general purpose package of tools for the quantitative epidemiologist.

## Installation

[![CRAN](http://www.r-pkg.org/badges/version/epiR)](https://cran.r-project.org/package=epiR)
[![R
check](https://github.com/easystats/performance/workflows/R-CMD-check/badge.svg?branch=main)](https://github.com/easystats/epiR/actions)

The *performance* package is available on CRAN, while its latest
development version is available on R-universe (from *rOpenSci*).

| Type        | Source     | Command                                                                |
|-------------|------------|------------------------------------------------------------------------|
| Release     | CRAN       | `install.packages("epiR")`                                             |


The tables below provide a summary of the main functions and data sets in the package. An alphabetical list of all functions and datasets is available by typing \code{library(help = epiR)} in the R console.

For further information on any of these functions, type `help(name)` or `?name` where `name` is the name of the function or dataset.

For details on how to use `epiR` for routine epidemiological work start R, type `help.start()` to open the help browser and navigate to `Packages > epiR > Vignettes`.

## Contents

The functions in \pkg{epiR} can be categorised into two main groups: tools for epidemioliological analysis and tools for the analysis of surveillance data. A summary of the package functions is as follows:

### I. EPIDEMIOLOGY

1. Descriptive statistics

| Function name        | Details                                                                |
|----------------------|------------------------------------------------------------------------|
| `epi.conf`           | Confidence intervals.                                                  |
| `epi.descriptives`   | Descriptive statistics.                                                |
|-----------------------------------------------------------------------------------------------|

2. Measures of health and measures of association

\tabular{ll}{
    \code{\link{epi.directadj}}         \tab Directly adjusted incidence rate estimates. \cr
    \code{\link{epi.edr}}               \tab Compute estimated dissemination ratios from outbreak event data. \cr
    \code{\link{epi.empbayes}}          \tab Empirical Bayes estimates of observed event counts. \cr
    \code{\link{epi.indirectadj}}       \tab Indirectly adjusted incidence risk estimates. \cr
    \code{\link{epi.insthaz}}           \tab Instantaneous hazard estimates based on Kaplan-Meier survival estimates. \cr
    \code{\link{epi.2by2}}              \tab Measures of association from data presented in a 2 by 2 table. \cr
  }
}

3. Diagnostic tests

\tabular{ll}{
    \code{\link{epi.betabuster}}         \tab An R version of Wes Johnson and Chun-Lung Su's Betabuster. \cr
    \code{\link{epi.herdtest}}           \tab Estimate the characteristics of diagnostic tests applied at the herd (group) level. \cr
    \code{\link{epi.nomogram}}           \tab Compute the post-test probability of disease given characteristics of a diagnostic test. \cr
    \code{\link{epi.pooled}}             \tab Estimate herd test characteristics when samples are pooled. \cr
    \code{\link{epi.prev}}               \tab Compute the true prevalence of a disease in a population on the basis of an imperfect test. \cr
    \code{\link{epi.tests}}              \tab Sensitivity, specificity and predictive value of a diagnostic test. \cr
  }
}

4. Meta-analysis

\tabular{ll}{
    \code{\link{epi.dsl}}                \tab Mixed-effects meta-analysis of binary outcome data using the DerSimonian and Laird method. \cr
    \code{\link{epi.iv}}                 \tab Fixed-effects meta-analysis of binary outcome data using the inverse variance method. \cr
    \code{\link{epi.mh}}                 \tab Fixed-effects meta-analysis of binary outcome data using the Mantel-Haenszel method. \cr
    \code{\link{epi.smd}}                \tab Fixed-effects meta-analysis of continuous outcome data using the standardised mean difference method. \cr
  }
}

5. Regression analysis tools

\tabular{ll}{
    \code{\link{epi.cp}}                 \tab Extract unique covariate patterns from a data set. \cr
    \code{\link{epi.cpresids}}           \tab Compute covariate pattern residuals from a logistic regression model. \cr
    \code{\link{epi.interaction}}        \tab Relative excess risk due to interaction in a case-control study. \cr
  }
}

6. Data manipulation tools

\tabular{ll}{
    \code{\link{epi.asc}}                \tab Write matrix to an ASCII raster file. \cr
    \code{\link{epi.convgrid}}           \tab Convert British National Grid georeferences to easting and northing coordinates. \cr
    \code{\link{epi.dms}}                \tab Convert decimal degrees to degrees, minutes and seconds and vice versa. \cr
    \code{\link{epi.ltd}}                \tab Calculate lactation to date and standard lactation (that is, 305 or 270 day) milk yields. \cr
    \code{\link{epi.offset}}             \tab Create an offset vector based on a list suitable for WinBUGS. \cr
    \code{\link{epi.RtoBUGS}}            \tab Write data from an R list to a text file in WinBUGS-compatible format. \cr
  }
}

7. Sample size calculations

The naming convention for the sample size functions in \pkg{epiR} is: \code{epi.ss} (sample size) + an abbreviation to represent the sampling design (e.g., \code{simple}, \code{strata}, \code{clus1}, \code{clus2}) + an abbreviation of the objectives of the study (\code{est} when you want to estimate a population parameter or \code{comp} when you want to compare two groups) + a single letter defining the outcome variable type (\code{b} for binary, \code{c} for continuous and \code{s} for survival data).

\tabular{ll}{

    \code{\link{epi.sssimpleestb}}       \tab Sample size to estimate a binary outcome using simple random sampling. \cr
    \code{\link{epi.sssimpleestc}}       \tab Sample size to estimate a continuous outcome using simple random sampling. \cr
                                         \tab  \cr  
    \code{\link{epi.ssstrataestb}}       \tab Sample size to estimate a binary outcome using stratified random sampling. \cr
    \code{\link{epi.ssstrataestc}}       \tab Sample size to estimate a continuous outcome using stratified random sampling. \cr
                                         \tab  \cr  
    \code{\link{epi.ssclus1estb}}        \tab Sample size to estimate a binary outcome using one-stage cluster sampling. \cr
    \code{\link{epi.ssclus1estc}}        \tab Sample size to estimate a continuous outcome using one-stage cluster sampling. \cr
                                         \tab  \cr  
    \code{\link{epi.ssclus2estb}}        \tab Sample size to estimate a binary outcome using two-stage cluster sampling. \cr
    \code{\link{epi.ssclus2estc}}        \tab Sample size to estimate a continuous outcome using two-stage cluster sampling. \cr
                                         \tab  \cr  
    \code{\link{epi.ssxsectn}}           \tab Sample size, power or detectable prevalence ratio for a cross-sectional study. \cr
    \code{\link{epi.sscohortc}}          \tab Sample size, power or detectable risk ratio for a cohort study using count data. \cr
    \code{\link{epi.sscohortt}}          \tab Sample size, power or detectable risk ratio for a cohort study using time at risk data. \cr
    \code{\link{epi.sscc}}               \tab Sample size, power or detectable odds ratio for case-control studies. \cr
                                         \tab  \cr  
    \code{\link{epi.sscompb}}            \tab Sample size, power and detectable risk ratio when comparing binary outcomes. \cr
    \code{\link{epi.sscompc}}            \tab Sample size, power and detectable risk ratio when comparing continuous outcomes. \cr
    \code{\link{epi.sscomps}}            \tab Sample size, power and detectable hazard when comparing time to event. \cr
                                         \tab  \cr  
    \code{\link{epi.ssequb}}             \tab Sample size for a parallel equivalence or equality trial, binary outcome. \cr
    \code{\link{epi.ssequc}}             \tab Sample size for a parallel equivalence or equality trial, continuous outcome. \cr
                                         \tab  \cr  
    \code{\link{epi.sssupb}}             \tab Sample size for a parallel superiority trial, binary outcome. \cr
    \code{\link{epi.sssupc}}             \tab Sample size for a parallel superiority trial, continuous outcome. \cr
                                         \tab  \cr  
    \code{\link{epi.ssninfb}}            \tab Sample size for a non-inferiority trial, binary outcome. \cr
    \code{\link{epi.ssninfc}}            \tab Sample size for a non-inferiority trial, continuous outcome. \cr
                                         \tab  \cr  
    \code{\link{epi.ssdetect}}           \tab Sample size to detect an event. \cr
    \code{\link{epi.ssdxsesp}}           \tab Sample size to estimate the sensitivity or specificity of a diagnostic test. \cr
    \code{\link{epi.ssdxtest}}           \tab Sample size to validate a diagnostic test in the absence of a gold standard. \cr
  }
}

8. Miscellaneous functions

\tabular{ll}{
    \code{\link{epi.prcc}}               \tab Compute partial rank correlation coefficients. \cr
    \code{\link{epi.psi}}                \tab Compute proportional similarity indices. \cr
    \code{\link{epi.realrisk}}           \tab return absolute risks from odds, incidence risk and hazard ratios. \cr
  }
}


9. Data sets
  \tabular{ll}{
    \code{\link{epi.epidural}}           \tab Rates of use of epidural anaesthesia in trials of caregiver support. \cr
    \code{\link{epi.incin}}              \tab Laryngeal and lung cancer cases in Lancashire 1974 - 1983. \cr
    \code{\link{epi.SClip}}              \tab Lip cancer in Scotland 1975 - 1980. \cr
  }
 }
}

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

## Documentation

There is a nice introduction into the package on
[youtube](https://www.youtube.com/watch?v=EPIxQ5i5oxs).

## The *performance* workflow

<img src="man/figures/figure_workflow.png" width="75%" />

### Assessing model quality

#### R-squared

**performance** has a generic `r2()` function, which computes the
r-squared for many different models, including mixed effects and
Bayesian regression models.

`r2()` returns a list containing values related to the “most
appropriate” r-squared for the given model.

``` r
model <- lm(mpg ~ wt + cyl, data = mtcars)
r2(model)
#> # R2 for Linear Regression
#>        R2: 0.830
#>   adj. R2: 0.819

model <- glm(am ~ wt + cyl, data = mtcars, family = binomial)
r2(model)
#> # R2 for Logistic Regression
#>   Tjur's R2: 0.705

library(MASS)
data(housing)
model <- polr(Sat ~ Infl + Type + Cont, weights = Freq, data = housing)
r2(model)
#>   Nagelkerke's R2: 0.108
```

The different R-squared measures can also be accessed directly via
functions like `r2_bayes()`, `r2_coxsnell()` or `r2_nagelkerke()` (see a
full list of functions
[here](https://easystats.github.io/performance/reference/index.html#section-r-functions)).

For mixed models, the *conditional* and *marginal* R-squared are
returned. The *marginal R-squared* considers only the variance of the
fixed effects and indicates how much of the model’s variance is
explained by the fixed effects part only. The *conditional R-squared*
takes both the fixed and random effects into account and indicates how
much of the model’s variance is explained by the “complete” model.

For frequentist mixed models, `r2()` (resp. `r2_nakagawa()`) computes
the *mean* random effect variances, thus `r2()` is also appropriate for
mixed models with more complex random effects structures, like random
slopes or nested random effects (Johnson 2014; Nakagawa, Johnson, and
Schielzeth 2017).

``` r
set.seed(123)
library(rstanarm)

model <- stan_glmer(
  Petal.Length ~ Petal.Width + (1 | Species),
  data = iris,
  cores = 4
)

r2(model)
#> # Bayesian R2 with Compatibility Interval
#> 
#>   Conditional R2: 0.953 (95% CI [0.942, 0.963])
#>      Marginal R2: 0.824 (95% CI [0.721, 0.899])

library(lme4)
model <- lmer(Reaction ~ Days + (1 + Days | Subject), data = sleepstudy)
r2(model)
#> # R2 for Mixed Models
#> 
#>   Conditional R2: 0.799
#>      Marginal R2: 0.279
```

#### Intraclass Correlation Coefficient (ICC)

Similar to R-squared, the ICC provides information on the explained
variance and can be interpreted as “the proportion of the variance
explained by the grouping structure in the population” (Hox 2010).

`icc()` calculates the ICC for various mixed model objects, including
`stanreg` models.

``` r
library(lme4)
model <- lmer(Reaction ~ Days + (1 + Days | Subject), data = sleepstudy)
icc(model)
#> # Intraclass Correlation Coefficient
#> 
#>     Adjusted ICC: 0.722
#>   Unadjusted ICC: 0.521
```

…and models of class `brmsfit`.

``` r
library(brms)
set.seed(123)
model <- brm(mpg ~ wt + (1 | cyl) + (1 + wt | gear), data = mtcars)
```

``` r
icc(model)
#> # Intraclass Correlation Coefficient
#> 
#>     Adjusted ICC: 0.930
#>   Unadjusted ICC: 0.771
```

### Model diagnostics

#### Check for overdispersion

Overdispersion occurs when the observed variance in the data is higher
than the expected variance from the model assumption (for Poisson,
variance roughly equals the mean of an outcome).
`check_overdispersion()` checks if a count model (including mixed
models) is overdispersed or not.

``` r
library(glmmTMB)
data(Salamanders)
model <- glm(count ~ spp + mined, family = poisson, data = Salamanders)
check_overdispersion(model)
#> # Overdispersion test
#> 
#>        dispersion ratio =    2.946
#>   Pearson's Chi-Squared = 1873.710
#>                 p-value =  < 0.001
```

Overdispersion can be fixed by either modelling the dispersion parameter
(not possible with all packages), or by choosing a different
distributional family (like Quasi-Poisson, or negative binomial, see
(Gelman and Hill 2007)).

#### Check for zero-inflation

Zero-inflation (in (Quasi-)Poisson models) is indicated when the amount
of observed zeros is larger than the amount of predicted zeros, so the
model is *underfitting* zeros. In such cases, it is recommended to use
negative binomial or zero-inflated models.

Use `check_zeroinflation()` to check if zero-inflation is present in the
fitted model.

``` r
model <- glm(count ~ spp + mined, family = poisson, data = Salamanders)
check_zeroinflation(model)
#> # Check for zero-inflation
#> 
#>    Observed zeros: 387
#>   Predicted zeros: 298
#>             Ratio: 0.77
```

#### Check for singular model fits

A “singular” model fit means that some dimensions of the
variance-covariance matrix have been estimated as exactly zero. This
often occurs for mixed models with overly complex random effects
structures.

`check_singularity()` checks mixed models (of class `lme`, `merMod`,
`glmmTMB` or `MixMod`) for singularity, and returns `TRUE` if the model
fit is singular.

``` r
library(lme4)
data(sleepstudy)

# prepare data
set.seed(123)
sleepstudy$mygrp <- sample(1:5, size = 180, replace = TRUE)
sleepstudy$mysubgrp <- NA
for (i in 1:5) {
  filter_group <- sleepstudy$mygrp == i
  sleepstudy$mysubgrp[filter_group] <-
    sample(1:30, size = sum(filter_group), replace = TRUE)
}

# fit strange model
model <- lmer(
  Reaction ~ Days + (1 | mygrp / mysubgrp) + (1 | Subject),
  data = sleepstudy
)

check_singularity(model)
#> [1] TRUE
```

Remedies to cure issues with singular fits can be found
[here](https://easystats.github.io/performance/reference/check_singularity.html).

#### Check for heteroskedasticity

Linear models assume constant error variance (homoskedasticity).

The `check_heteroscedasticity()` functions assess if this assumption has
been violated:

``` r
data(cars)
model <- lm(dist ~ speed, data = cars)

check_heteroscedasticity(model)
#> Warning: Heteroscedasticity (non-constant error variance) detected (p = 0.031).
```

#### Comprehensive visualization of model checks

**performance** provides many functions to check model assumptions, like
`check_collinearity()`, `check_normality()` or
`check_heteroscedasticity()`. To get a comprehensive check, use
`check_model()`.

``` r
# defining a model
model <- lm(mpg ~ wt + am + gear + vs * cyl, data = mtcars)

# checking model assumptions
check_model(model)
```

<img src="man/figures/unnamed-chunk-14-1.png" width="80%" />

### Model performance summaries

`model_performance()` computes indices of model performance for
regression models. Depending on the model object, typical indices might
be r-squared, AIC, BIC, RMSE, ICC or LOOIC.

#### Linear model

``` r
m1 <- lm(mpg ~ wt + cyl, data = mtcars)
model_performance(m1)
#> # Indices of model performance
#> 
#> AIC     |    AICc |     BIC |    R2 | R2 (adj.) |  RMSE | Sigma
#> ---------------------------------------------------------------
#> 156.010 | 157.492 | 161.873 | 0.830 |     0.819 | 2.444 | 2.568
```

#### Logistic regression

``` r
m2 <- glm(vs ~ wt + mpg, data = mtcars, family = "binomial")
model_performance(m2)
#> # Indices of model performance
#> 
#> AIC    |   AICc |    BIC | Tjur's R2 |  RMSE | Sigma | Log_loss | Score_log | Score_spherical |   PCP
#> -----------------------------------------------------------------------------------------------------
#> 31.298 | 32.155 | 35.695 |     0.478 | 0.359 | 1.000 |    0.395 |   -14.903 |           0.095 | 0.743
```

#### Linear mixed model

``` r
library(lme4)
m3 <- lmer(Reaction ~ Days + (1 + Days | Subject), data = sleepstudy)
model_performance(m3)
#> # Indices of model performance
#> 
#> AIC      |     AICc |      BIC | R2 (cond.) | R2 (marg.) |   ICC |   RMSE |  Sigma
#> ----------------------------------------------------------------------------------
#> 1755.628 | 1756.114 | 1774.786 |      0.799 |      0.279 | 0.722 | 23.438 | 25.592
```

### Models comparison

The `compare_performance()` function can be used to compare the
performance and quality of several models (including models of different
types).

``` r
counts <- c(18, 17, 15, 20, 10, 20, 25, 13, 12)
outcome <- gl(3, 1, 9)
treatment <- gl(3, 3)
m4 <- glm(counts ~ outcome + treatment, family = poisson())

compare_performance(m1, m2, m3, m4, verbose = FALSE)
#> # Comparison of Model Performance Indices
#> 
#> Name |   Model |  AIC (weights) | AICc (weights) |  BIC (weights) |   RMSE |  Sigma | Score_log | Score_spherical |    R2 | R2 (adj.) | Tjur's R2 | Log_loss |   PCP | R2 (cond.) | R2 (marg.) |   ICC | Nagelkerke's R2
#> ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#> m1   |      lm |  156.0 (<.001) |  157.5 (<.001) |  161.9 (<.001) |  2.444 |  2.568 |           |                 | 0.830 |     0.819 |           |          |       |            |            |       |                
#> m2   |     glm |   31.3 (>.999) |   32.2 (>.999) |   35.7 (>.999) |  0.359 |  1.000 |   -14.903 |           0.095 |       |           |     0.478 |    0.395 | 0.743 |            |            |       |                
#> m3   | lmerMod | 1764.0 (<.001) | 1764.5 (<.001) | 1783.1 (<.001) | 23.438 | 25.592 |           |                 |       |           |           |          |       |      0.799 |      0.279 | 0.722 |                
#> m4   |     glm |   56.8 (<.001) |   76.8 (<.001) |   57.7 (<.001) |  3.043 |  1.000 |    -2.598 |           0.324 |       |           |           |          |       |            |            |       |           0.657
```

#### General index of model performance

One can also easily compute and a [**composite
index**](https://easystats.github.io/performance/reference/compare_performance.html#details)
of model performance and sort the models from the best one to the worse.

``` r
compare_performance(m1, m2, m3, m4, rank = TRUE, verbose = FALSE)
#> # Comparison of Model Performance Indices
#> 
#> Name |   Model |   RMSE |  Sigma | AIC weights | AICc weights | BIC weights | Performance-Score
#> -----------------------------------------------------------------------------------------------
#> m2   |     glm |  0.359 |  1.000 |       1.000 |        1.000 |       1.000 |           100.00%
#> m4   |     glm |  3.043 |  1.000 |    2.96e-06 |     2.06e-10 |    1.63e-05 |            37.67%
#> m1   |      lm |  2.444 |  2.568 |    8.30e-28 |     6.07e-28 |    3.99e-28 |            36.92%
#> m3   | lmerMod | 23.438 | 25.592 |    0.00e+00 |     0.00e+00 |    0.00e+00 |             0.00%
```

#### Visualisation of indices of models’ performance

Finally, we provide convenient visualisation (the `see` package must be
installed).

``` r
plot(compare_performance(m1, m2, m4, rank = TRUE, verbose = FALSE))
```

<img src="man/figures/unnamed-chunk-20-1.png" width="100%" />

### Testing models

`test_performance()` (and `test_bf`, its Bayesian sister) carries out
the most relevant and appropriate tests based on the input (for
instance, whether the models are nested or not).

``` r
set.seed(123)
data(iris)

lm1 <- lm(Sepal.Length ~ Species, data = iris)
lm2 <- lm(Sepal.Length ~ Species + Petal.Length, data = iris)
lm3 <- lm(Sepal.Length ~ Species * Sepal.Width, data = iris)
lm4 <- lm(Sepal.Length ~ Species * Sepal.Width + Petal.Length + Petal.Width, data = iris)

test_performance(lm1, lm2, lm3, lm4)
#> Name | Model |       BF | Omega2 | p (Omega2) |    LR | p (LR)
#> --------------------------------------------------------------
#> lm1  |    lm |          |        |            |       |       
#> lm2  |    lm | 3.45e+26 |   0.69 |     < .001 | -6.25 | < .001
#> lm3  |    lm | 4.69e+07 |   0.36 |     < .001 | -3.44 | < .001
#> lm4  |    lm | 7.58e+29 |   0.73 |     < .001 | -7.77 | < .001
#> Each model is compared to lm1.

test_bf(lm1, lm2, lm3, lm4)
#> Bayes Factors for Model Comparison
#> 
#>       Model                                                    BF
#> [lm2] Species + Petal.Length                             3.45e+26
#> [lm3] Species * Sepal.Width                              4.69e+07
#> [lm4] Species * Sepal.Width + Petal.Length + Petal.Width 7.58e+29
#> 
#> * Against Denominator: [lm1] Species
#> *   Bayes Factor Type: BIC approximation
```

### Plotting Functions

Plotting functions are available through the [**see**
package](https://easystats.github.io/see/articles/performance.html).

# Code of Conduct

Please note that the performance project is released with a [Contributor
Code of
Conduct](https://easystats.github.io/performance/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

# Contributing

We are happy to receive bug reports, suggestions, questions, and (most
of all) contributions to fix problems and add features.

Please follow contributing guidelines mentioned here:

<https://easystats.github.io/performance/CONTRIBUTING.html>

## References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-gelman_data_2007" class="csl-entry">

Gelman, Andrew, and Jennifer Hill. 2007. *Data Analysis Using Regression
and Multilevel/Hierarchical Models*. Analytical Methods for Social
Research. Cambridge ; New York: Cambridge University Press.

</div>

<div id="ref-hox_multilevel_2010" class="csl-entry">

Hox, J. J. 2010. *Multilevel Analysis: Techniques and Applications*. 2nd
ed. Quantitative Methodology Series. New York: Routledge.

</div>

<div id="ref-johnson_extension_2014" class="csl-entry">

Johnson, Paul C. D. 2014. “Extension of Nakagawa & Schielzeth’s R2 GLMM
to Random Slopes Models.” Edited by Robert B. O’Hara. *Methods in
Ecology and Evolution* 5 (9): 944–46.

</div>

<div id="ref-nakagawa_coefficient_2017" class="csl-entry">

Nakagawa, Shinichi, Paul C. D. Johnson, and Holger Schielzeth. 2017.
“The Coefficient of Determination R2 and Intra-Class Correlation
Coefficient from Generalized Linear Mixed-Effects Models Revisited and
Expanded.” *Journal of The Royal Society Interface* 14 (134): 20170213.

</div>

</div>
