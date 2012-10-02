\name{localfunction}
\alias{localfunction}
\title{Store a new function into the local database}
\usage{
  localfunction(func)
}
\arguments{
  \item{func}{The function you want to store}
}
\description{
  Store a new function into the local database
}
\examples{
\dontrun{
myfun <- function(x){x + 2}
localfunction(myfun)
}
}

