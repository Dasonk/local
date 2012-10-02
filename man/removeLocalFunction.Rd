\name{removeLocalFunction}
\alias{removeLocalFunction}
\title{Removes a local function from the database}
\usage{
  removeLocalFunction(name)
}
\arguments{
  \item{name}{The name of the function you want to remove
  as a character string.}
}
\description{
  Removes a local function from the database. If you do
  this you will no longer have access to the function when
  local is loaded.
}
\details{
  This returns FALSE if the function doesn't exist in the
  database or if something went wrong when attempting to
  delete it from the database.  It returns TRUE if
  successful.
}

