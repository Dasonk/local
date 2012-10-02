\name{addLocal}
\alias{addLocal}
\title{Store a new function or piece of data into the local database}
\usage{
  addLocal(item)
}
\arguments{
  \item{item}{The item you want to store.  Either a
  function or data.}
}
\description{
  Store a new function or piece of data into the local
  database. When you store something into the database then
  everytime you load local it will be reloaded into the
  global environment.  This is a convenient alternative to
  saving your functions/data in a script if you're working
  on the fly.
}
\examples{
\dontrun{
myfun <- function(x){x + 2}
addLocal(myfun)
}
}

