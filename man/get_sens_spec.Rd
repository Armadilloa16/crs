% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_sens_spec.R
\name{get_sens_spec}
\alias{get_sens_spec}
\title{Calculate sensitivity and specificity}
\usage{
get_sens_spec(tab, pos = 2, alpha = 0.05)
}
\arguments{
\item{tab}{a confusion matrix (object of class "matrix" or table")}

\item{pos}{the levels of the margins that are considered "positive"}

\item{alpha}{confidence level of CIs (default=0.05)}
}
\value{
A tibble with columns \code{param} ("sens" or "spec"), \code{cases}, \code{correct}, \code{est}, \code{lo}, \code{up}.
}
\description{
Calculate sensitivity and specificity from a confusion matrix
}
\examples{
library(tibble)
set.seed(1234)
AB <- data_frame(A=sample(1:3, 20, replace=TRUE), B=sample(1:3, 20, replace=TRUE))
get_sens_spec(with(AB,table(A,B)), pos = 2:3)
}
\author{
Ty Stanford <tyman@lbtinnovations.com>
}
