.onLoad <- function(libname, pkgname){
    # Load the functions stored...
    functionsPath <- file.path(find.package("local"), "localdatabase")
    
    loadfunction <- function(filename){
        file <- file.path(functionsPath, filename)
        fun <- readRDS(file)
        functionname <- gsub(".rds$", "", filename)
        
        cmd <- paste0("assign(",
                      shQuote(functionname),
                      ", fun, envir = globalenv())")
        #TODO: check to make sure it's a valid file and what not
        eval(parse(text = cmd))
    }
    
    functions <- grep("*.rds", dir(functionsPath, all = TRUE), value = TRUE)
    functions <- functions[functions != ".localplaceholder.rds"]
    lapply(functions, loadfunction)
    return()
}