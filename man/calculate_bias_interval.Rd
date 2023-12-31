% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bias_calculate_interval.R
\name{calculate_bias_interval}
\alias{calculate_bias_interval}
\title{Calculate bias interval from TV}
\usage{
calculate_bias_interval(
  scenario,
  nrun,
  nrep,
  SWL,
  SR,
  nsamples,
  expected_mean,
  user_mean,
  ...
)
}
\arguments{
\item{scenario}{Choosed scenario from section 3.3 of EP15-A3}

\item{nrun}{Number of runs}

\item{nrep}{number of repetitions per run (n0)}

\item{SWL}{S within laboratory (obtained from anova)}

\item{SR}{S repetability (obtained from anova)}

\item{nsamples}{total number of samples tested usual 1}

\item{expected_mean}{Expected mean or TV}

\item{user_mean}{Mean of all samples (obtained from anova)}

\item{...}{additional parameters necessary for processing the choosed scenario}
}
\value{
a named list with the defined mean, the interval significance (user mean should be in for approval), and total bias (user mean - TV)
}
\description{
Calculate bias interval from TV
}
\examples{
calculate_bias_interval(scenario = 'E',
nrun = 7,
nrep = 5,
SWL = .042,
SR = .032,
nsamples = 2,
expected_mean = 1,
user_mean = .94
)
}
