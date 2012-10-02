#' Store a new function or piece of data into the local database
#' 
#' Store a new function or piece of data into the local database.  
#' When you store something into the database then everytime you 
#' load local it will be reloaded into the global environment.  This
#' is a convenient alternative to saving your functions/data in a script
#' if you're working on the fly.
#' 
#' @param item The item you want to store.  Either a function or data.
#' @export
#' @examples
#' \dontrun{
#' myfun <- function(x){x + 2}
#' addLocal(myfun)
#' }
addLocal <- function(item){
     itemPath <- file.path(find.package("local"), "localdatabase")
     itemName <- as.character(substitute(item))
     saveRDS(item, file = file.path(itemPath, paste0(itemName, ".rds")))
}