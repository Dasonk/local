#' Store a new function into the local database
#' 
#' Store a new function into the local database.  When you
#' store a function then everytime you load local your
#' function will be reloaded into the global environment.  This
#' is a convenient alternative to saving your function in a script
#' if you're working on the fly.
#' 
#' @param func The function you want to store.
#' @export
#' @examples
#' \dontrun{
#' myfun <- function(x){x + 2}
#' addLocalFunction(myfun)
#' }
addLocalFunction <- function(func){
     functionsPath <- file.path(find.package("local"), "localdatabase")
     functionName <- as.character(substitute(func))
     saveRDS(func, file = file.path(functionsPath, paste0(functionName, ".rds")))
}