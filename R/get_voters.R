#' Get NC voter Data
#'
#' @param file_type the file you would like to retrieve
#' @param county the county you would like to retrieve
#' @param local_version boolean to write a local SQLlite instance. Default of
#'     \code{FALSE}
#' @examples \dontrun{
#'
#' dat <- get_voters(file_type = "ncvhis", county = "forsyth")
#' dat <- get_voters("ncvhis", 67)
#' }
#' @importFrom utils download.file unzip
#' @export

get_voters <- function(file_type, county,
											 local_version = FALSE,
											 out_location = NULL){

	file_type_match <- match.arg(file_type,
															 c("ncvhis", "ncvoter"), several.ok = FALSE)

	county_match <- return_valid_county(county)

	# Contruct the URL
	url <- paste0("https://s3.amazonaws.com/dl.ncsbe.gov/data/",
								file_type_match,
								county_match,
								".zip")

	if(local_version){

		fs::dir_create(path = "ncsbe-data")
		download.file(url, destfile = paste0("ncsbe-data/",
																				 file_type_match,
																				 county_match, ".zip"))
		unzip(paste0("ncsbe-data/",
								 file_type_match,
								 county_match, ".zip"))

		unlink(paste0("ncsbe-data/",
									file_type_match,
									county_match, ".zip"))

	}

	temp_file <- tempfile(fileext = ".zip")

	download.file(url, destfile = temp_file)

	dat <- data.table::fread(unzip(temp_file))

	unlink(temp_file)

	dat

}

