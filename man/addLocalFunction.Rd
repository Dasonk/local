\name{addLocalFunction}
\alias{addLocalFunction}
\title{Store a new function into the local database}
\usage{
  addLocalFunction(func)
}
\arguments{
  \item{func}{The function you want to store.}
}
\description{
  Store a new function into the local database.  When you
  store a function then everytime you load local your
  function will be reloaded into the global environment.
  This is a convenient alternative to saving your function
  in a script if you're working on the fly.
}
\examples{
\dontrun{
myfun <- function(x){x + 2}
addLocalFunction(myfun)
}
}

