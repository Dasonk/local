.onLoad <- function(libname, pkgname){
    # Load the functions stored...
    #functionsPath <- file.path(find.package("local"), "localfunctions")
    functionsPath <- getwd()
    
    functions <- grep("*.rds", dir(functionsPath), value = TRUE)
    lapply(functions, loadfunction)
}