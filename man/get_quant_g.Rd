% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/influence_functions.R
\name{get_quant_g}
\alias{get_quant_g}
\title{Estimation of the quantiles of g(eta)}
\usage{
get_quant_g(g, eps, min_g, max_g)
}
\arguments{
\item{g}{a matrix n x delta g (generally evaluated at the X in the train set),
where each column represents the function g(eta) for a given value of delta.}

\item{eps}{vector of epsilon values (prop. unmeasured confounding)}

\item{min_g}{the min value of g. The zero-quantile is set to be the 
min(g) - 1e-10, so that for eps = 0, the ATE is point-identified. This is
because R takes the minimum to be the zero-quantile.}

\item{max_g}{the max value of g. The one-quantile is set to be the max(g).}
}
\value{
a length(eps) x ncol(g) (= ndelta) matrix, where each entry  (i,j)
equals quantile(g[, delta[j]], p = eps[i])
}
\description{
\code{get_quant_g} returns the quantiles for the function g(eta)
}
\seealso{
\code{\link{if_gamma}}, \code{\link{get_ifvals}}, 
\code{\link{if_tau}}, \code{\link{get_g}}.
}
