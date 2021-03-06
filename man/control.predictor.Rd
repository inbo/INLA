%%
%% WARNING! DO NOT EDIT!
%% This file is automatically generated from set.default.arguments.R
%%
\name{control.predictor}
\alias{control.predictor}
\alias{inla.control.predictor}
\alias{inla.set.control.predictor.default}
\alias{set.control.predictor.default}
\alias{control.predictor.default}
\title{Control variables in control.predictor}
\description{Control variables in \code{control.predictor} for use in \code{inla}}
\usage{
inla.set.control.predictor.default(...)
control.predictor(A, cdf, compute, cross, fixed, hyper, initial, link, param, precision, prior, quantiles)
}
\arguments{
\item{...}{Possible arguments}
\item{hyper}{  Definition of the hyperparameters.}
\item{fixed}{  (OBSOLETE!) If the precision for the artificial noise is fixed or not (defualt TRUE)}
\item{prior}{  (OBSOLETE!) The prior for the artificial noise}
\item{param}{  (OBSOLETE!) Prior parameters for the artificial noise}
\item{initial}{  (OBSOLETE!) The value of the log precision of the artificial noise}
\item{compute}{  A boolean variable; should the marginals for the linear predictor be computed? (Default FALSE.)}
\item{cdf}{  A list of values to compute the CDF for the linear predictor}
\item{quantiles}{  A list of quantiles to compute for the linear predictor}
\item{cross}{  Cross-sum-to-zero constraints with the linear predictor. All linear predictors with the same level of 'cross' are constrained to have sum zero. Use 'NA' for no contribution. 'Cross' has the same length as the linear predictor (including the 'A' matrix extention). (THIS IS AN EXPERIMENTAL OPTION, CHANGES MAY APPEAR.)}
\item{A}{  The observation matrix (matrix or Matrix::sparseMatrix).}
\item{precision}{  The precision for eta* - A*eta, (default \code{exp(15)})}
\item{link}{  Define the family-connection for unobserved observations (\code{NA}). \code{link} is integer values which defines the family connection; \code{family[link[idx]]} unless \code{is.na(link[idx])} for which the identity-link is used. The \code{link}-argument only influence the \code{fitted.values} in the \code{result}-object. If \code{is.null(link)} (default) then the identity-link is used for all missing observations. If the length of \code{link} is 1, then this value is replicated with the length of the responce vector. If an element of the responce vector is \code{!NA} then the corresponding entry in \code{link} is not used (but must still be a legal value). Setting this variable implies \code{compute=TRUE}.}
}
\value{
 
The function \code{control.predictor} is used to TAB-complete arguments and returns a list of given arguments.
The function \code{inla.set.control.predictor.default} returns a list with all the default values of all parameters within this control statement.
}
\seealso{
\code{\link{control.update}}, \code{\link{control.lincomb}}, \code{\link{control.group}}, \code{\link{control.mix}}, \code{\link{control.link}}, \code{\link{control.expert}}, \code{\link{control.compute}}, \code{\link{control.gev2.default}}, \code{\link{control.family}}, \code{\link{control.fixed}}, \code{\link{control.inla}}, \code{\link{control.predictor}}, \code{\link{control.results}}, \code{\link{control.mode}}, \code{\link{control.hazard}}, 
\code{\link{inla}}
}
