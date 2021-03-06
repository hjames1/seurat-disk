% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PadMatrix.R
\name{PadMatrix}
\alias{PadMatrix}
\alias{PadMatrix,H5D-method}
\alias{PadMatrix,H5Group-method}
\title{Pad a matrix}
\usage{
PadMatrix(src, dest, dname, dims, index)

\S4method{PadMatrix}{H5D}(src, dest, dname, dims, index)

\S4method{PadMatrix}{H5Group}(src, dest, dname, dims, index)
}
\arguments{
\item{src}{A source matrix}

\item{dest}{Destination HDF5 file or group for the padded matrix}

\item{dname}{Destination name for the padded matrix}

\item{dims}{A two-length integer vector with the number of rows and number of
columns in the padded matrix}

\item{index}{A two-length list of integer vectors describing the rows and
columns that \code{src} exists in}
}
\value{
...
}
\description{
Pad a matrix
}
\keyword{internal}
