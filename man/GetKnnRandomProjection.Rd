% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/densitycut.R
\name{GetKnnRandomProjection}
\alias{GetKnnRandomProjection}
\title{Efficient Knn-search in high-dimensional search (upto 1000 dimensions)}
\usage{
GetKnnRandomProjection(X, num.tree = 50, K)
}
\arguments{
\item{X}{A data matrix (columns are features and rows are data points)}

\item{num.tree}{The number of trees for random projection}

\item{K}{A integer to specify the number of neighbours in building the Knn graph.
Default to \eqn{K=\log_2(N)}, where N is the number of data points}
}
\value{
A list containg knn.index, knn.dist, the dimensionality D,
and the projected trees: tree.index
}
\description{
export
}
