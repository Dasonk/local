#' Reloads everything to the way they're currently saved
#' 
#' Reloads everything to the way they're currently saved.
#' If you've made any modifications to the functions and/or
#' data then this will wipe away those changes and revert
#' the items to the way they're stored in the database.
#' 
#' @export
#' @examples
#' \dontrun{
#' library(local)
#' myfun <- function(x){x}
#' addLocal(myfun)
#' q("no")
#' # Reload R
#' library(local)
#' # Now myfun is in the environment
#' myfun <- "hey"
#' # Now it's changed
#' reloadLocal()
#' myfun # is back to function(x){x}
#' }
reloadLocal <- function(){
    loadAll()
}