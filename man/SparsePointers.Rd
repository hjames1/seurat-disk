% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sparse_matrix.R
\name{SparsePointers}
\alias{SparsePointers}
\alias{IndexToPointer}
\alias{PointerToIndex}
\title{Convert sparse matrix pointers to indices and vice versa}
\source{
\code{PointerToIndex} came from
\href{https://stackoverflow.com/questions/20008200/r-constructing-sparse-matrix}{StackOverflow}
}
\usage{
IndexToPointer(j)

PointerToIndex(p)
}
\arguments{
\item{j}{A vector of sparse matrix colum indices}

\item{p}{A vector of sparse matrix pointers}
}
\value{
\code{IndexToPointer}: A vector of index pointers (p)

\code{PointerToIndex}: A vector of column (j) indices
}
\description{
Convert sparse matrix pointers to indices and vice versa
}
\examples{
\donttest{
dat <- dat <- c(0, 0, 1, 4, 0, 2, 0, 9, 0)
smat <- Matrix::Matrix(data = dat, nrow = 3, sparse = TRUE)
j <- SeuratDisk:::PointerToIndex(p = smat@p)
Matrix::sparseMatrix(i = smat@i + 1, j = j, x = smat@x)
p <- SeuratDisk:::IndexToPointer(j = j)
Matrix::sparseMatrix(i = smat@i + 1, p = p, x= smat@x)
}
}
\author{
\code{PointerToIndex} was written by
\href{https://stackoverflow.com/users/980833/josh-obrien}{Josh O'Brien on StackOverflow}
}
\keyword{internal}
