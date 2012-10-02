#' Store a new function into the local database
#' 
#' Store a new function into the local database
#' 
#' @param func The function you want to store
#' @export
#' @examples
#' \dontrun{
#' myfun <- function(x){x + 2}
#' localfunction(myfun)
#' }
localfunction <- function(func){
     functionsPath <- file.path(find.package("local"), "extdata")
     functionName <- as.character(substitute(func))
     saveRDS(func, file = file.path(functionsPath, paste0(functionName, ".rds")))
     #functionName
}