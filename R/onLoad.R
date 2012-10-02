.onLoad <- function(libname, pkgname){
    # Load the functions stored...
    databasePath <- file.path(find.package("local"), "localdatabase")
    
    loadItem <- function(filename){
        file <- file.path(databasePath, filename)
        item <- readRDS(file)
        itemName <- gsub(".rds$", "", filename)
        
        cmd <- paste0("assign(",
                      shQuote(itemName),
                      ", item, envir = globalenv())")
        #TODO: check to make sure it's a valid file and what not
        eval(parse(text = cmd))
    }
    
    items <- grep("*.rds", dir(databasePath, all.files = TRUE), value = TRUE)
    items <- items[items != ".localplaceholder.rds"]
    lapply(items, loadItem)
    return()
}