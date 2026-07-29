##' @title flags
##'
##' @description Return named vector with flags from R
##'
##' @return A named vector
##' @export
flags <- function() {
    c(arm64 =  grepl("aarch", R.version$platform))
}
