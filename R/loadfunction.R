loadfunction <- function(filename, path = file.path(find.package("local"), "localfunctions")){
    # For time being don't even care if you write over something
    fun <- readRDS(file.path(path, filename))
    #TODO: check to make sure it's a valid file and what not
    functionname <- gsub(".rds", "", filename)
    assign(functionname, fun, envir = globalenv())
}