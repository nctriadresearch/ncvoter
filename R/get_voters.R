#' Get NC voter Data
#'
#' @param file_type the file you would like to retrieve
#' @param county the county you would like to retrieve
#' @param local_version boolean to write a local SQLlite instance. Default of
#'     \code{FALSE}
#' @examples \dontrun{
#'
#' dat <- get_voters("nchist", 67)
#' }
#' @export

get_voters <- function(file_type, county, local_version = FALSE){

	file_type_match <- match.arg(file_type,
															 c("nchist", "ncvoter"), several.ok = FALSE)

	county_match <- return_valid_county(county)

}
