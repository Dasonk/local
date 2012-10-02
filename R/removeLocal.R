#' Removes a local function or data from the database
#' 
#' Removes a local function or data from the database.
#' If you do this you will no longer have access to
#' the function or data when local is loaded.
#' 
#' This returns FALSE if the item doesn't exist
#' in the database or if something went wrong when attempting
#' to delete it from the database.  It returns TRUE if
#' successful.
#' 
#' @param name The name of the item you want to remove 
#'  as a character string.
#' @export
#' @examples
#' \dontrun{
#' myfun <- function(x){x+2}
#' addLocal(myfun)
#' removeLocal("myfun")
#' }
removeLocal <- function(name){
    itemPath <- file.path(find.package("local"), "localdatabase")
    fileName <- paste0(name, ".rds")
    
    # Check if function exists
    if(!(fileName %in% dir(itemPath, all = TRUE))){
        warning("Function not found in local database.  Nothing removed.")
        return(FALSE)
    }
    
    filePath <- file.path(itemPath, fileName)
    result <- file.remove(filePath)
    return(result)
}