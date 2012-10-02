#' Removes a local function from the database
#' 
#' Removes a local function from the database.
#' If you do this you will no longer have access to
#' the function when local is loaded.
#' 
#' This returns FALSE if the function doesn't exist
#' in the database or if something went wrong when attempting
#' to delete it from the database.  It returns TRUE if
#' successful.
#' 
#' @param name The name of the function you want to remove 
#'  as a character string.
#' @export
removeLocalFunction <- function(name){
    functionsPath <- file.path(find.package("local"), "localdatabase")
    fileName <- paste0(name, ".rds")
    
    # Check if function exists
    if(!(fileName %in% dir(functionsPath, all = TRUE))){
        warning("Function not found in local database.  Nothing removed.")
        return(FALSE)
    }
    
    filePath <- file.path(functionsPath, fileName)
    result <- file.remove(filePath)
    return(result)
}