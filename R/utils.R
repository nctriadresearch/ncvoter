
# Check for Counties

return_valid_county <- function(x){
	x <- suppress_all(as.numeric(x))

	x <- as.integer(round(x))

	if(!x %in% 1:100){
		stop("Please pass a valid code for country (i.e. 1-100)")
	}
	x
}


suppress_all <- function(x){
	x <- suppressMessages(suppressWarnings(x))
	x
}
