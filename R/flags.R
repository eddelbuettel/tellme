##' @title flags
##'
##' @description Return named vector with flags from R
##'
##' @return A named vector
##' @export
flags <- function() {
    c(arm64 =  grepl("aarch", R.version$platform))
}

##' @title everything
##'
##' @description Call available functions
##'
##' @return Nothing, function invoked for side effects
##' @export
everything <- function() {
    print(tellme())
    print(versions())
    print(flags())
    print(R.version)
    print(Sys.info())
    invisible()
}

.onAttach <- function(libname, pkgname) {
    ## At r-universe, print everything
    if (nzchar(Sys.getenv("MY_UNIVERSE", ""))) everything()
}
