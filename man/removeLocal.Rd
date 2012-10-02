\name{removeLocal}
\alias{removeLocal}
\title{Removes a local function or data from the database}
\usage{
  removeLocal(name)
}
\arguments{
  \item{name}{The name of the item you want to remove as a
  character string.}
}
\description{
  Removes a local function or data from the database. If
  you do this you will no longer have access to the
  function or data when local is loaded.
}
\details{
  This returns FALSE if the item doesn't exist in the
  database or if something went wrong when attempting to
  delete it from the database.  It returns TRUE if
  successful.
}

