# epiR <img src='man/figures/logo.png' align="right" height="139" />

[![downloads](http://cranlogs.r-pkg.org/badges/epiR)](https://cran.r-project.org/package=epiR)
[![total](https://cranlogs.r-pkg.org/badges/grand-total/epiR)](https://cranlogs.r-pkg.org/)
[![status](https://tinyverse.netlify.com/badge/epiR)](https://CRAN.R-project.org/package=epiR)

`epiR` is a package of tools for quantitative epidemiologists developed and maintained by the [Veterinary Epidemiology group](https://mvs.unimelb.edu.au/research/groups/veterinary-epidemiology-melbourne) at the [University of Melbourne](https://www.unimelb.edu.au/), Australia and [Ausvet](https://ausvet.com.au), Australia.

The EpiTools app for [iPhone](https://apps.apple.com/vn/app/epi-tools/id1611139482) and [Android](https://play.google.com/store/apps/details?id=au.melbourne.uni.epitools) devices provides access to many of the functions in `epiR` using a smart phone. Use the following QR codes to install EpiTools on your phone:

<table>
  <tr>
    <td valign="top" align="center" width="33%"><img src="man/figures/qrcode_apps.apple.com.png" alt="1"></td>
    <td valign="top" align="center" width="33%"><span style="font-size: 8pt">&nbsp;</td>
    <td valign="top" align="center" width="33%"><img src="man/figures/qrcode_play.google.com.png" alt="2"></td>
  </tr> 
  <tr>
    <td valign="top" align="center" width="33%">iOS</td>
    <td valign="top" align="center" width="33%">&nbsp;</td>
    <td valign="top" align="center" width="33%">Android</td>
  </tr>
</table>

## Installation

[![CRAN](http://www.r-pkg.org/badges/version/epiR)](https://cran.r-project.org/package=epiR)
[![R
check](https://github.com/easystats/performance/workflows/R-CMD-check/badge.svg?branch=main)](https://github.com/easystats/epiR/actions)


| Type        | Source     | Command                                                                |
|-------------|------------|------------------------------------------------------------------------|
| Release     | CRAN       | `install.packages("epiR")`                                             |


The tables below provide a summary of the main functions and data sets in the package. An alphabetical list of all functions and datasets is available by typing `library(help = epiR)` in the R console.

For further information on any of these functions, type `help(name)` or `?name` where `name` is the name of the function or dataset.

For details on how to use `epiR` for routine epidemiological work start R, type `help.start()` to open the help browser and navigate to `Packages > epiR > Vignettes`.

## Contents

The functions in `epiR` can be categorised into two main groups: Tools for epidemiolological analysis and tools for the analysis and assessment of surveillance data. The epidemiology functions have a `epi.` prefix. The surveillance functions have a `rsu.` prefix. A summary of the package functions is as follows:

### I. EPIDEMIOLOGY

1. Descriptive statistics

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.conf`           | Confidence intervals.                                                                      |
| `epi.descriptives`   | Descriptive statistics.                                                                    |


2. Measures of health and measures of association


| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.2by2`           | Measures of association from data presented in a 2 by 2 table.                             | 
| `epi.directadj`      | Directly adjusted incidence rate estimates.                                                |
| `epi.edr`            | Compute estimated dissemination ratios from outbreak event data.                           |
| `epi.empbayes`       | Empirical Bayes estimates of observed event counts.                                        |
| `epi.indirectadj`    | Indirectly adjusted incidence risk estimates.                                              |
| `epi.insthaz`        | Instantaneous hazard estimates based on Kaplan-Meier survival estimates.                   |


3. Diagnostic tests

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.betabuster`     | An R version of Wes Johnson and Chun-Lung Su's Betabuster.                                 |
| `epi.herdtest`       | Estimate the characteristics of diagnostic tests applied at the herd (group) level.        |
| `epi.nomogram`       | Compute the post-test probability of disease given characteristics of a diagnostic test.   |
| `epi.pooled`         | Estimate herd test characteristics when samples are pooled.                                |
| `epi.prev`           | Compute the true prevalence of a disease in a population on the basis of an imperfect test.|
| `epi.tests`          | Sensitivity, specificity and predictive value of a diagnostic test.                        |


4. Meta-analysis

The meta-analysis functions here are based on those presented in Egger et al. (2001).

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.dsl`            | Mixed-effects meta-analysis of binary outcome data using the DerSimonian and Laird method. |
| `epi.iv`             | Fixed-effects meta-analysis of binary outcome data using the inverse variance method.      |
| `epi.mh`             | Fixed-effects meta-analysis of binary outcome data using the Mantel-Haenszel method.       |
| `epi.smd`            | Fixed-effects meta-analysis of continuous outcome data using the standardised mean difference method.|


5. Regression analysis tools


| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.cp`             | Extract unique covariate patterns from a data set.                                         |
| `epi.cpresids`       | Compute covariate pattern residuals from a logistic regression model.                      |
| `epi.interaction`    | Relative excess risk due to interaction in a case-control study.                           |


6. Data manipulation tools

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.asc`            | Write a matrix to an ASCII raster file.                                                    |
| `epi.convgrid`       | Convert British National Grid georeferences to easting and northing coordinates.           |
| `epi.dms`            | Convert decimal degrees to degrees, minutes and seconds and vice versa.                    |
| `epi.ltd`            | Calculate lactation to date and standard lactation (that is, 305 or 270 day) milk yields.  |
| `epi.offset`         | Create an offset vector based on a list suitable for WinBUGS.                              |
| `epi.RtoBUGS`        | Write data from an R list to a text file in WinBUGS-compatible format.                     |


7. Sample size calculations

The naming convention for the sample size functions in `epiR` is: `epi.ss` (sample size) + an abbreviation to represent the sampling design (e.g., `simple`, `strata`, `clus1`, `clus2`) + an abbreviation of the objectives of the study (`est` when you want to estimate a population parameter or `comp` when you want to compare two groups) + a single letter defining the outcome variable type (`b` for binary, `c` for continuous and `s` for survival [time to event] data).


| Function             | Details                                                                                    |
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


Note that for the comparison functions, statistical power is returned if a study size is entered. Take the following example (from the documentation for `epi.sscompb`).

A government initiative has decided to reduce the prevalence of male smoking to, at most, 30%. A sample survey is planned to test, at the 0.05 level, the hypothesis that the percentage of smokers in the male population is 30% against the one-sided alternative that it is greater. The survey should be able to find a prevalence of 32%, when it is true, with 0.90 power. How many men need to be sampled?

``` r
epi.sscompb(N = NA, treat = 0.30, control = 0.32, n = NA, power = 0.90, 
   r = 1, design = 1, sided.test = 1, nfractional = FALSE, conf.level = 0.95)
```

A total of 4568 men should be sampled: 2284 in the treatment group and 2284 in the control group. The risk ratio (that is, the prevalence of smoking in males post government initiative divided by the prevalence of smoking in males pre initiative) is 0.94.

What will be the statistical power of this study if only 2000 men (1000 in the treatment group and 1000 in the control group) are sampled?

``` r
epi.sscompb(N = NA, treat = 0.30, control = 0.32, n = 2000, power = NA, 
   r = 1, design = 1, sided.test = 1, nfractional = FALSE, conf.level = 0.95)
```
If only 2000 men are sampled the expected statistical power of the study is 0.62.


8. Miscellaneous functions

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.prcc`           | Compute partial rank correlation coefficients.                                             |
| `epi.psi`            | Compute proportional similarity indices.                                                   |
| `epi.realrisk`       | Return absolute risks from odds, incidence risk and hazard ratios.                         |


9. Data sets

| Data set             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `epi.epidural`       | Rates of use of epidural anaesthesia in trials of caregiver support.                       |
| `epi.incin`          | Laryngeal and lung cancer cases in Lancashire 1974 - 1983.                                 |
| `epi.SClip`          | Lip cancer in Scotland 1975 - 1980.                                                        |


### II. SURVEILLANCE

Below, SSe stands for surveillance system sensitivity. Surveillance system sensitivity is the average probability that a surveillance system (as a whole) will return a positive surveillance outcome, given disease is present in the population at a level equal to or greater than a specified design prevalence.

1. Representative sampling --- sample size

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.sspfree.rs`     | Defined probability of disease freedom.                                                    |
| `rsu.sssep.rs`       | SSe, perfect test specificity.                                                             |
| `rsu.sssep.rs2st`    | SSe, two stage sampling.                                                                   |
| `rsu.sssep.rsfreecalc`| SSe, imperfect test specificity.                                                          |
| `rsu.sssep.rspool`   | SSe, pooled sampling.                                                                      |


2. Representative sampling --- surveillance system sensitivity and specificity

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.sep.rs`         | SSe, representative sampling.                                                              |
| `rsu.sep.rs2st`      | SSe, representative two-stage sampling.                                                    |
| `rsu.sep.rsmult`     | SSe, representative multiple surveillance components.                                      |
| `rsu.sep.rsfreecalc` | SSe, imperfect test specificity.                                                           |
| `rsu.sep.rspool`     | SSe, representative pooled sampling.                                                       |
| `rsu.sep.rsvarse`    | SSe, varying surveillance unit sensitivity.                                                |
| `rsu.spp.rs`         | Surveillance system specificity.                                                           |

3. Representative sampling --- probability of disease freedom

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.pfree.rs`       | Probability of disease freedom for a single or multiple time periods.                      |
| `rsu.pfree.equ`      | Equilibrium probability of disease freedom.                                                |


4. Risk-based sampling --- sample size

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.sssep.rbsrg`    | SSe, single sensitivity for each risk group.                                               |
| `rsu.sssep.rbmrg`    | SSe, multiple sensitivities within risk groups.                                            |
| `rsu.sssep.rb2st1rf` | SSe, 2 stage sampling, 1 risk factor.                                                      |
| `rsu.sssep.rb2st2rf` | SSe, 2 stage sampling, 2 risk factors.                                                     |

5. Risk-based sampling --- surveillance system sensitivity and specificity

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.sep.rb`         | SSe, risk-based sampling.                                                                  |
| `rsu.sep.rb1rf`      | SSe, risk-based sampling, 1 risk factor.                                                   |
| `rsu.sep.rb2rf`      | SSe, risk-based sampling, 2 risk factors.                                                  |
| `rsu.sep.rbvarse`    | SSe, risk-based sampling, varying unit sensitivity.                                        |
| `rsu.sep.rb2st`      | SSe, 2-stage risk-based sampling.                                                          |

6. Risk-based sampling --- probability of disease freedom

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.pfree.equ`      | Equilibrium probability of disease freedom.                                                |

7. Census sampling --- surveillance system sensitivity

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.sep.cens`       | SSe, census sampling.                                                                      |

8. Passive surveillance --- surveillance system sensitivity

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.sep.pass`       | SSe, passive surveillance.                                                                 |

9. Miscellaneous functions

| Function             | Details                                                                                    |
|----------------------|--------------------------------------------------------------------------------------------|
| `rsu.adjrisk`        | Adjusted risk values.                                                                      |
| `rsu.dxtest`         | Series and parallel diagnostic test interpretation.                                        |
| `rsu.epinf`          | Effective probability of disease.                                                          |
| `rsu.pstar`          | Design prevalence back calculation.                                                        |
| `rsu.sep`            | Probability disease is less than specified design prevalence.                              |

## Citation

To cite `epiR` in publications use:

``` r
citation("epiR")

#> To cite package ‘epiR’ in publications use:
#> 
#>   Stevenson M, Sergeant E, Firestone S (2023). epiR: Tools for the Analysis of Epidemiological Data. R package
#>   version 2.0.66, <https://mvs.unimelb.edu.au/research/groups/veterinary-epidemiology-melbourne>.

#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {epiR: Tools for the Analysis of Epidemiological Data},
#>     author = {Mark Stevenson and Evan Sergeant and Simon Firestone},
#>     year = {2023},
#>     note = {R package version 2.0.66},
#>     url = {https://mvs.unimelb.edu.au/research/groups/veterinary-epidemiology-melbourne},
#>   }
```

</div>
</div>
