.onLoad <- function(libname, pkgname){
    # Load the functions stored...
    functionsPath <- file.path(find.package("local"), "localfunctions")
    #functionsPath <- getwd()
    
    loadfunction <- function(filename){
        file <- file.path(functionsPath, filename)
        fun <- readRDS(file)
        functionname <- gsub(".rds", "", filename)
        #TODO: check to make sure it's a valid file and what not
        eval(parse(text = paste0("assign(",shQuote(functionname),", fun, envir = globalenv())")))
    }
    
    functions <- grep("*.rds", dir(functionsPath), value = TRUE)
    lapply(functions, loadfunction)
    return()
}