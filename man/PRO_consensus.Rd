% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cytosee_clustering.R
\name{PRO_consensus}
\alias{PRO_consensus}
\title{Generate the best label by consensus clustering}
\usage{
PRO_consensus(object, MaxC = MaxC, n_cores = n_cores)
}
\arguments{
\item{object}{cytosee object}

\item{MaxC}{The max number to esitimate the k}

\item{n_core}{how many cores you want to use}
}
\description{
We use consensus clustering method to make sure the result is reliable
}
